import 'dart:convert';

import 'package:dio/dio.dart';

import '../../shared/auth/domain/credentials.dart';

class AuthDio {
  AuthDio(Credentials credentials) : dio = Dio() {
    final basicAuth = base64Encode(
        (utf8.encode('${credentials.clientId}:${credentials.clientSecret}')),);
    dio.options.headers['Authorization'] = 'Basic $basicAuth';
    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        error: true,
      ),
    );
  }

  final Dio dio;
}
