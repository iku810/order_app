import 'auth_exception.dart';
import 'token.dart';

sealed class AuthState {}

class UnAuthenticated extends AuthState {}

class Authenticating extends AuthState {}

class Authenticated extends AuthState {
  Authenticated({required this.token});
  final Token token;
}

class AuthError extends AuthState {
  AuthError(this.exception);
  final AuthException exception;
}
