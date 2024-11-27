import 'package:dio/dio.dart';

class SublimeBaseRepository {
  final Dio _dio;

  SublimeBaseRepository(String? token) : _dio = Dio() {
    _dio.options = BaseOptions(
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': token != null ? 'Bearer $token' : null,
      },
    );
  }

  Future<Response> get(String url, {Map<String, dynamic>? queryParams}) async {
    try {
      return await _dio.get(url, queryParameters: queryParams);
    } catch (e) {
      throw Exception('GET Error: $e');
    }
  }

  Future<Response> post(String url, {dynamic data}) async {
    try {
      return await _dio.post(url, data: data);
    } catch (e) {
      throw Exception('POST Error: $e');
    }
  }

  Future<Response> put(String url, {dynamic data}) async {
    try {
      return await _dio.put(url, data: data);
    } catch (e) {
      throw Exception('PUT Error: $e');
    }
  }

  Future<Response> delete(String url, {dynamic data}) async {
    try {
      return await _dio.delete(url, data: data);
    } catch (e) {
      throw Exception('DELETE Error: $e');
    }
  }
}
