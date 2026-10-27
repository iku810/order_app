import '../../../../infrastructure/network/auth_api_client.dart';
import '../../../../infrastructure/storage/secure_storage.dart';
import '../../../../infrastructure/storage/shared_preferences.dart';
import '../../domain/auth_exception.dart';
import '../../domain/contract_id.dart';
import '../../domain/repository/auth_repository.dart';
import '../../domain/token.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(
    this._apiClient,
    this._secureStorage,
    this._sharedPreferencesStorage,
    this._contractId,
  );

  final _grantType = 'client_credentials';
  final _scope = [
    'waiter.stores:read',
    'waiter.menus:read',
    'waiter.orders:read',
    'waiter.orders:write',
    'waiter.orders:history',
  ].join(' ');

  final AuthApiClient _apiClient;

  final SecureStorage _secureStorage;

  final SharedPreferencesStorage _sharedPreferencesStorage;

  final ContractId _contractId;

  @override
  Future<Token> fetchToken() async {
    try {
      final token = await _apiClient.getToken(
        contractId: _contractId.value,
        grantType: _grantType,
        scope: _scope,
      );

      final accessToken = token.accessToken;
      if (accessToken == null) {
        throw FailedToGetTokenException('アクセストークンがnullです');
      }

      final expiresIn = token.expiresIn;

      return Token.fromValue(
        accessToken,
        expiresIn == null ? null : PositiveInt(expiresIn),
        LastFetchedAt(),
      );
    } catch (e) {
      throw FailedToGetTokenException('アクセストークンの取得に失敗しました: $e');
    }
  }

  @override
  Future<Token> getToken() async {
    final expiredIn = await _sharedPreferencesStorage.getTokenExpiredIn();
    final token = await _secureStorage.getToken();
    final lastFetchedAt =
        await _sharedPreferencesStorage.getLastFetchedTokenAt();
    if (token == null || expiredIn == null || lastFetchedAt == null) {
      throw FailedToGetTokenException('アクセストークンの取得に失敗しました');
    }
    return Token.fromValue(
      token,
      PositiveInt(expiredIn),
      LastFetchedAt.fromValue(lastFetchedAt),
    );
  }

  @override
  Future<void> saveToken(Token token) async {
    await _secureStorage.saveToken(token.value);
    await _sharedPreferencesStorage.saveTokenExpiredIn(token.expiredInSec);
    await _sharedPreferencesStorage
        .saveLastFetchedTokenAt(token.lastFetchedAtSec);
  }

  @override
  Future<void> deleteToken() async {
    await _secureStorage.deleteToken();
    await _sharedPreferencesStorage.deleteTokenExpiredIn();
    await _sharedPreferencesStorage.deleteLastFetchedTokenAt();
  }
}
