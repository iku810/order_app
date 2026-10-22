import 'package:flutter_test/flutter_test.dart';
import 'package:order_app/features/check_in/domain/check_in_exceptions.dart';
import 'package:order_app/features/check_in/domain/customer_number.dart';

void main() {
  group('CustomerNumber.of', () {
    test('最小値(1)は正常に生成される', () {
      final n = CustomerNumber.of(1);
      expect(n.value, 1);
    });

    test('最大値(9)は正常に生成される', () {
      final n = CustomerNumber.of(9);
      expect(n.value, 9);
    });

    test('0はInvalidCustomerNumberExceptionが発生する', () {
      expect(
        () => CustomerNumber.of(0),
        throwsA(isA<InvalidCustomerNumberException>()),
      );
    });

    test('10はInvalidCustomerNumberExceptionが発生する', () {
      expect(
        () => CustomerNumber.of(10),
        throwsA(isA<InvalidCustomerNumberException>()),
      );
    });
  });

  group('canIncrement / canDecrement', () {
    test('最大値のとき canIncrement は false', () {
      expect(CustomerNumber.of(9).canIncrement, false);
    });

    test('最大値未満のとき canIncrement は true', () {
      expect(CustomerNumber.of(8).canIncrement, true);
    });

    test('最小値のとき canDecrement は false', () {
      expect(CustomerNumber.of(1).canDecrement, false);
    });

    test('最小値より大きいとき canDecrement は true', () {
      expect(CustomerNumber.of(2).canDecrement, true);
    });
  });

  group('increment / decrement', () {
    test('increment で値が1増える', () {
      expect(CustomerNumber.of(3).increment().value, 4);
    });

    test('decrement で値が1減る', () {
      expect(CustomerNumber.of(3).decrement().value, 2);
    });
  });
}
