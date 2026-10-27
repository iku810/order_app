import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../network/api_client.dart';
import 'api_dio_provider.dart';

part 'api_client_provider.g.dart';

@riverpod
ApiClient apiClient(Ref ref) {
  return ApiClient(
    ref.watch(apiDioProvider).dio,
    baseUrl: 'https://api.smaregi.dev/',
  );
}
