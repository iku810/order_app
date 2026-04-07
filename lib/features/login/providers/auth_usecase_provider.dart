import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../shared/auth/providers/auth_repository_provider.dart';
import '../application/auth_usecase.dart';

part 'auth_usecase_provider.g.dart';

@riverpod
AuthUsecase authUseCase(Ref ref) {
  return AuthUsecase(ref.watch(authRepositoryProvider));
}