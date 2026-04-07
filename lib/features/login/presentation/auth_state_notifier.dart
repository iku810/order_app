import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../shared/auth/domain/entity/auth_exception.dart';
import '../../../shared/auth/domain/entity/auth_state.dart';
import '../providers/auth_usecase_provider.dart';

part 'auth_state_notifier.g.dart';

@riverpod
class AuthStateNotifier extends _$AuthStateNotifier {
  @override
  AuthState build() {
    return UnAuthenticated();
  }

  Future<void> login() async {
    state = Authenticating();
    try {
      final authUseCase = ref.read(authUseCaseProvider);
      final result = await authUseCase.tryAuth();
      state = result;
    } catch (e) {
      state = AuthError(UnknownAuthException('予期しないエラーが発生しました: $e'));
    }
  }
}
