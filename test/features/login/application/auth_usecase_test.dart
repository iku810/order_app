import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:order_app/features/login/application/auth_usecase.dart';
import 'package:order_app/shared/auth/domain/auth_exception.dart';
import 'package:order_app/shared/auth/domain/auth_state.dart';
import 'package:order_app/shared/auth/domain/token.dart';

import '../../../mocks.mocks.dart';

void main() {
  late MockAuthRepository mockRepository;
  late AuthUsecase usecase;

  setUp(() {
    mockRepository = MockAuthRepository();
    usecase = AuthUsecase(mockRepository);
  });

  final token = Token.fromValue(
    'test_token',
    PositiveInt(3600),
    LastFetchedAt(),
  );

  group('AuthUsecase.tryAuth', () {
    test('正常系: Authenticatedが返り、saveTokenが呼ばれる', () async {
      when(mockRepository.fetchToken()).thenAnswer((_) async => token);
      when(mockRepository.saveToken(any)).thenAnswer((_) async {});

      final result = await usecase.tryAuth();

      expect(result, isA<Authenticated>());
      verify(mockRepository.saveToken(token)).called(1);
    });

    test('AuthExceptionが発生した場合はAuthErrorが返る', () async {
      when(mockRepository.fetchToken()).thenThrow(
        FailedToGetTokenException('token error'),
      );

      final result = await usecase.tryAuth();

      expect(result, isA<AuthError>());
      expect((result as AuthError).exception, isA<FailedToGetTokenException>());
    });

    test('未知の例外が発生した場合はUnknownAuthExceptionのAuthErrorが返る', () async {
      when(mockRepository.fetchToken()).thenThrow(Exception('unexpected'));

      final result = await usecase.tryAuth();

      expect(result, isA<AuthError>());
      expect((result as AuthError).exception, isA<UnknownAuthException>());
    });
  });
}
