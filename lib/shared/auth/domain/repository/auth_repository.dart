import '../token.dart';

abstract class AuthRepository {
  Future<Token> fetchToken();

  Future<Token> getToken();

  Future<void> saveToken(Token token);

  Future<void> deleteToken();
}
