import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../network/api_client.dart';

part 'api_client_provider.g.dart';

@riverpod
ApiClient apiClient(Ref ref) {
  return ApiClient(
    Dio(),
    baseUrl: 'https://api.smaregi.dev/',
  );
}
