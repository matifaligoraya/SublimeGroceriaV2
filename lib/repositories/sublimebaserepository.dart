import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sublime_groceria/common/api.dart';
import 'package:sublime_groceria/models/common/response.dart';

class SublimeBaseRepository {
  final Dio _dio = Dio();
  String? _token;

  Future<void> _initialize() async {
    // _token = await _getToken();
    _dio.options = BaseOptions(
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    );
  }

  /// Fetch token from SharedPreferences
  Future<String?> _getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('token'); // Replace 'auth_token' with your token key
  }

  /// Update Authorization header dynamically
  Future<void> _updateHeaders() async {
    final token = await _getToken();
    if (token != null) {
      _dio.options.headers['Content-Type'] = 'application/json';
      _dio.options.headers['Authorization'] = 'Bearer $token';

      _dio.options.headers['Appkey'] = 'key ${API.apikey}';
    } else {
      _dio.options.headers.remove('Authorization');
    }
  }

  /// Generic GET request
  Future<ApiResponse<T>> get<T>({
    required String url,
    required T Function(Object?) fromJsonT,
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      await _updateHeaders();
      final response = await _dio.get(url, queryParameters: queryParams);

      return ApiResponse<T>.fromJson(
        response.data,
        fromJsonT,
      );
    } on DioException catch (e) {
      throw Exception('GET Error: ${e.response?.data ?? e.message}');
    } catch (e) {
      throw Exception('Unexpected GET Error: $e');
    }
  }

  /// Generic POST request
  Future<ApiResponse<T>> post<T>({
    required String url,
    required T Function(Object?) fromJsonT,
    dynamic data,
  }) async {
    try {
      await _updateHeaders();
      final response = await _dio.post(url, data: data);

      return ApiResponse<T>.fromJson(
        response.data,
        fromJsonT,
      );
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
}
