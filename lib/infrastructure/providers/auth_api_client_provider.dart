import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../network/auth_api_client.dart';
import 'auth_dio_provider.dart';


part 'auth_api_client_provider.g.dart';

@riverpod
AuthApiClient authApiClient(Ref ref) {
  return AuthApiClient(ref.watch(authDioProvider).dio);
}
