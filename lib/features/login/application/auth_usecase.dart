import '../../../shared/auth/domain/auth_exception.dart';
import '../../../shared/auth/domain/auth_state.dart';
import '../../../shared/auth/domain/repository/auth_repository.dart';

class AuthUsecase {
  AuthUsecase(this.repository);
  final AuthRepository repository;

  Future<AuthState> tryAuth() async {
    try {
      final token = await repository.fetchToken();
      await repository.saveToken(token);
      return Authenticated(token: token);
    } catch (e) {
      if (e is AuthException) {
        return AuthError(e);
      }
      return AuthError(UnknownAuthException('予期しないエラーが発生しました: $e'));
    }
  }
}
