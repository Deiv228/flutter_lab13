import 'package:dio/dio.dart';

class ApiService {
  static const String baseUrl = 'https://deiv228lab13.requestcatcher.com';

  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {'Content-Type': 'application/json'},
    ),
  );

  Future<bool> sendLogin({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _dio.post(
        '/login',
        data: {
          'action': 'Login',
          'email': email,
          'password': password,
          'timestamp': DateTime.now().toIso8601String(),
        },
      );
      return response.statusCode == 200;
    } catch (e) {
      return false;
    }
  }

  Future<bool> sendSignUp({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final response = await _dio.post(
        '/signup',
        data: {
          'action': 'Sign up',
          'name': name,
          'email': email,
          'password': password,
          'timestamp': DateTime.now().toIso8601String(),
        },
      );
      return response.statusCode == 200;
    } catch (e) {
      return false;
    }
  }

  Future<bool> sendResetPassword({
    required String email,
  }) async {
    try {
      final response = await _dio.post(
        '/reset-password',
        data: {
          'action': 'Reset Password',
          'email': email,
          'timestamp': DateTime.now().toIso8601String(),
        },
      );
      return response.statusCode == 200;
    } catch (e) {
      return false;
    }
  }
}