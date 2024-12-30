import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sublime_groceria/common/api.dart';
import 'package:sublime_groceria/common/apiException.dart';
import 'package:sublime_groceria/models/common/response.dart';

class SublimeBaseRepository {
  final Dio _dio = Dio();
  String? userId;
  String? _token;
  SublimeBaseRepository() {
    _initialize();
  }
  Future<void> _initialize() async {
    // _token = await _getToken();
    _dio.options = BaseOptions(
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    );
  }

  Future<void> _updateHeaders() async {
    final token = await _getToken();
    if (token != null) {
      _dio.options.headers['Content-Type'] = 'application/json';
      _dio.options.headers['Authorization'] = 'Bearer $token';

      _dio.options.headers['Appkey'] = 'key ${ApiConfig.apikey}';
      // _dio.options.headers['userId'] = 'userId';
    } else {
      _dio.options.headers.remove('Authorization');
    }
  }

  /// Fetch userId from SharedPreferences
  Future<String?> fetchUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userId = prefs.getString('userId');
    if (userId == null || userId!.isEmpty) {
      throw Exception("User ID is null or empty.");
    }
    return userId;
  }

  /// Fetch token from SharedPreferences
  Future<String?> _getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('token'); // Replace 'auth_token' with your token key
  }

  /// Update Authorization header dynamically

  /// Generic GET request
  Future<dynamic> get({
    required String url,
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      await _updateHeaders();
      final response = await _dio.get(url, queryParameters: queryParams);
      final responseData = response.data as Map<String, dynamic>;

      return responseData;
    } on DioException catch (e) {
      processDioException(e);
    } catch (e) {
      throw Exception('Unexpected GET Error: $e');
    }
  }

  Future<dynamic> post<T>({
    required String url,
    required T Function(Object?) fromJsonT,
    dynamic data,
  }) async {
    try {
      await _updateHeaders();
      final response = await _dio.post(url, data: data);
      final responseData = response.data as Map<String, dynamic>;

      handleResponse(responseData);

      return responseData;
    } on ApiException catch (e) {
      throw e;
    } on DioException catch (e) {
      throw Exception('POST Error: ${e.response?.data ?? e.message}');
    } catch (e) {
      throw Exception('Unexpected POST Error: $e');
    }
  }

  /// Generic PUT request
  Future<ApiResponse<T>> put<T>({
    required String url,
    required T Function(Object?) fromJsonT,
    dynamic data,
  }) async {
    try {
      await _updateHeaders();
      final response = await _dio.put(url, data: data);

      return ApiResponse<T>.fromJson(
        response.data,
        fromJsonT,
      );
    } on DioException catch (e) {
      throw Exception('PUT Error: ${e.response?.data ?? e.message}');
    } catch (e) {
      throw Exception('Unexpected PUT Error: $e');
    }
  }

  /// Generic DELETE request
  Future<ApiResponse<T>> delete<T>({
    required String url,
    required T Function(Object?) fromJsonT,
    dynamic data,
  }) async {
    try {
      await _updateHeaders();
      final response = await _dio.delete(url, data: data);

      return ApiResponse<T>.fromJson(
        response.data,
        fromJsonT,
      );
    } on DioException catch (e) {
      throw Exception('DELETE Error: ${e.response?.data ?? e.message}');
    } catch (e) {
      throw Exception('Unexpected DELETE Error: $e');
    }
  }

  String processDioException(DioException e) {
    if (e.response?.data != null) {
      final errorData = e.response?.data as Map<String, dynamic>;

      // Safely extract the `errors` array and the `errorMessage`
      final List<dynamic>? errors = errorData['errors'] as List<dynamic>?;
      final String errorMessage = errors?.isNotEmpty == true
          ? errors!
              .map((error) => error['errorCode'] ?? 'Unknown error')
              .join(', ')
          : errorData['message']?.toString() ?? 'Unknown server error';

      return errorMessage;
    }

    return 'Network error: ${e.message}';
  }

  void handleResponse(Map<String, dynamic> response) {
    if (response["errors"] != null && response["errors"].isNotEmpty) {
      // Extract the list of errors from the response
      var errors = response["errors"];

      // Initialize a map to store the error properties in the desired format
      Map<String, String?> errorMap = {};

      // Iterate through the errors and extract the 'name' and 'message' properties
      for (var error in errors) {
        if (error['properties'] != null) {
          var properties = error['properties'];
          String? name = properties['name'];
          String? message = properties['message'];

          // Add the error to the map
          if (name != null && message != null) {
            errorMap[name] = message;
          }
        }
      }

      int? statusCode = int.tryParse(response["statusCode"].toString());

      throw ApiException(
        "Validation errors occurred",
        statusCode: statusCode,
        fieldErrors: errorMap,
      );
    }
  }
}
