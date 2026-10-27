import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../infrastructure/providers/auth_api_client_provider.dart';
import '../../../infrastructure/providers/secure_storage_provider.dart';
import '../../../infrastructure/providers/shared_preferences_provider.dart';
import '../data/repository/auth_repository_impl.dart';
import '../domain/repository/auth_repository.dart';
import 'contract_id_provider.dart';

part 'auth_repository_provider.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepositoryImpl(
    ref.watch(authApiClientProvider),
    ref.watch(secureStorageProvider),
    ref.watch(sharedPreferencesStorageProvider),
    ref.watch(contractIdProvider),
  );
}
