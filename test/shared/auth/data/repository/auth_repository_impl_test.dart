import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:order_app/shared/auth/data/dto/token_data.dart';
import 'package:order_app/shared/auth/data/repository/auth_repository_impl.dart';
import 'package:order_app/shared/auth/domain/auth_exception.dart';
import 'package:order_app/shared/auth/domain/contract_id.dart';
import 'package:order_app/shared/auth/domain/token.dart';

import '../../../../mocks.mocks.dart';

const contractId = ContractId('contract1');

void main() {
  late MockAuthApiClient mockAuthApiClient;
  late MockSecureStorage mockSecureStorage;
  late MockSharedPreferencesStorage mockSharedPreferencesStorage;
  late AuthRepositoryImpl repository;

  setUp(() {
    mockAuthApiClient = MockAuthApiClient();
    mockSecureStorage = MockSecureStorage();
    mockSharedPreferencesStorage = MockSharedPreferencesStorage();
    repository = AuthRepositoryImpl(
      mockAuthApiClient,
      mockSecureStorage,
      mockSharedPreferencesStorage,
      contractId,
    );
  });

  group('fetchToken', () {
    test('getTokenが呼ばれTokenが返る', () async {
      when(mockAuthApiClient.getToken(
        contractId: anyNamed('contractId'),
        grantType: anyNamed('grantType'),
        scope: anyNamed('scope'),
      ),).thenAnswer(
        (_) async => const TokenData(accessToken: 'token123', expiresIn: 3600),
      );

      final result = await repository.fetchToken();

      expect(result.value, 'token123');
    });

    test('accessTokenがnullの場合はFailedToGetTokenExceptionが発生する', () async {
      when(mockAuthApiClient.getToken(
        contractId: anyNamed('contractId'),
        grantType: anyNamed('grantType'),
        scope: anyNamed('scope'),
      ),).thenAnswer(
        (_) async => const TokenData(accessToken: null),
      );

      expect(
        () async => repository.fetchToken(),
        throwsA(isA<FailedToGetTokenException>()),
      );
    });
  });

  group('getToken', () {
    test('ストレージからTokenが返る', () async {
      when(mockSharedPreferencesStorage.getTokenExpiredIn())
          .thenAnswer((_) async => 3600);
      when(mockSecureStorage.getToken())
          .thenAnswer((_) async => 'token123');
      when(mockSharedPreferencesStorage.getLastFetchedTokenAt())
          .thenAnswer((_) async => 1000);

      final result = await repository.getToken();

      expect(result.value, 'token123');
    });

    test('tokenがnullの場合はFailedToGetTokenExceptionが発生する', () async {
      when(mockSharedPreferencesStorage.getTokenExpiredIn())
          .thenAnswer((_) async => 3600);
      when(mockSecureStorage.getToken())
          .thenAnswer((_) async => null);
      when(mockSharedPreferencesStorage.getLastFetchedTokenAt())
          .thenAnswer((_) async => 1000);

      expect(
        () async => repository.getToken(),
        throwsA(isA<FailedToGetTokenException>()),
      );
    });
  });

  group('saveToken', () {
    test('secureStorageとsharedPreferencesに保存される', () async {
      when(mockSecureStorage.saveToken(any)).thenAnswer((_) async {});
      when(mockSharedPreferencesStorage.saveTokenExpiredIn(any))
          .thenAnswer((_) async {});
      when(mockSharedPreferencesStorage.saveLastFetchedTokenAt(any))
          .thenAnswer((_) async {});

      final token = Token.fromValue('token123', PositiveInt(3600), LastFetchedAt());
      await repository.saveToken(token);

      verify(mockSecureStorage.saveToken('token123')).called(1);
      verify(mockSharedPreferencesStorage.saveTokenExpiredIn(any)).called(1);
      verify(mockSharedPreferencesStorage.saveLastFetchedTokenAt(any)).called(1);
    });
  });

  group('deleteToken', () {
    test('secureStorageとsharedPreferencesから削除される', () async {
      when(mockSecureStorage.deleteToken()).thenAnswer((_) async {});
      when(mockSharedPreferencesStorage.deleteTokenExpiredIn())
          .thenAnswer((_) async {});
      when(mockSharedPreferencesStorage.deleteLastFetchedTokenAt())
          .thenAnswer((_) async {});

      await repository.deleteToken();

      verify(mockSecureStorage.deleteToken()).called(1);
      verify(mockSharedPreferencesStorage.deleteTokenExpiredIn()).called(1);
      verify(mockSharedPreferencesStorage.deleteLastFetchedTokenAt()).called(1);
    });
  });
}
