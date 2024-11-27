import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sublime_groceria/common/api.dart';

class ReligionRepository {
  final Dio _dio;

  ReligionRepository() : _dio = Dio() {
    _dio.options = BaseOptions(
      baseUrl: API.BASE_URL,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    );

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final prefs = await SharedPreferences.getInstance();
          final token = prefs.getString('jwt_token');
          if (token != null) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          return handler.next(options);
        },
        onError: (DioException e, handler) {
          return handler.next(e);
        },
      ),
    );
  }

  Future<List<String>> fetchReligions() async {
    final response = await _dio.get(API.RELIGION);
    if (response.statusCode == 200) {
      return List<String>.from(response.data); // Adjust for your API response
    } else {
      throw Exception('Failed to fetch religions');
    }
  }
}
