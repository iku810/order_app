import 'package:flutter_test/flutter_test.dart';
import 'package:order_app/shared/auth/domain/token.dart';

void main() {
  group('PositiveInt', () {
    test('0以下の値を渡すとArgumentErrorが発生する', () {
      expect(() => PositiveInt(0), throwsArgumentError);
      expect(() => PositiveInt(-1), throwsArgumentError);
    });

    test('正の整数は正常に生成される', () {
      final p = PositiveInt(1);
      expect(p.value, 1);
    });
  });

  group('Token.fromValue', () {
    test('空文字列のトークンはArgumentErrorが発生する', () {
      expect(
        () => Token.fromValue('', PositiveInt(3600), LastFetchedAt()),
        throwsArgumentError,
      );
    });

    test('expiredInがnullの場合はArgumentErrorが発生する', () {
      expect(
        () => Token.fromValue('token', null, LastFetchedAt()),
        throwsArgumentError,
      );
    });

    test('有効なパラメータで正常に生成される', () {
      final token = Token.fromValue('abc', PositiveInt(3600), LastFetchedAt());
      expect(token.value, 'abc');
      expect(token.expiredInSec, 3600);
    });
  });

  group('Token.isExpired', () {
    test('有効期限内はfalseを返す', () {
      final now = (DateTime.now().millisecondsSinceEpoch / 1000).ceil();
      final token = Token.fromValue(
        'abc',
        PositiveInt(3600),
        LastFetchedAt.fromValue(now),
      );
      expect(token.isExpired, false);
    });

    test('有効期限切れのトークンはtrueを返す', () {
      // lastFetchedAt=1秒, expiredIn=1秒 → (1+1)*1000 = 2000ms → 現在時刻より確実に過去
      final token = Token.fromValue(
        'abc',
        PositiveInt(1),
        LastFetchedAt.fromValue(1),
      );
      expect(token.isExpired, true);
    });
  });
}
