sealed class AuthException implements Exception {

  AuthException(this.message);
  final String message;
}

class FailedToGetTokenException extends AuthException {
  FailedToGetTokenException(super.message);
}

class InvalidCredentialsException extends AuthException {

  InvalidCredentialsException(super.message);
}

class UnknownAuthException extends AuthException {

  UnknownAuthException(super.message);
}
