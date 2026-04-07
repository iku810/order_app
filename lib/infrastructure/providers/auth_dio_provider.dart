
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../shared/auth/providers/credential_provider.dart';
import '../network/auth_dio.dart';

part 'auth_dio_provider.g.dart';

@riverpod
AuthDio authDio(Ref ref) {
  return AuthDio(ref.watch(credentialsProvider));
}
