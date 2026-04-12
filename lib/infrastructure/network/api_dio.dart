import 'package:dio/dio.dart';

class ApiDio {
  ApiDio(String auth) : dio = Dio() {
    dio.options.headers['Authorization'] = 'Basic $auth';
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
