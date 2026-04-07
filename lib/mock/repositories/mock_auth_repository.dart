import '../../shared/auth/domain/entity/token.dart';
import '../../shared/auth/domain/repository/auth_repository.dart';

class MockAuthRepository implements AuthRepository {
  Token? _token;

  @override
  Future<Token> fetchToken() async {
    await Future<void>.delayed(const Duration(milliseconds: 300));
    _token = Token.fromValue(
      'mock-access-token-12345',
      PositiveInt(3600),
      LastFetchedAt(),
    );
    return _token!;
  }

  @override
  Future<Token> getToken() async {
    if (_token == null) {
      return fetchToken();
    }
    return _token!;
  }

  @override
  Future<void> saveToken(Token token) async {
    _token = token;
  }

  @override
  Future<void> deleteToken() async {
    _token = null;
  }
}
