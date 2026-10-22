import 'package:flutter_test/flutter_test.dart';
import 'package:order_app/features/order/domain/menu.dart';
import 'package:order_app/features/order/domain/menu_selection.dart';

Menu makeMenu() => Menu.create(
      id: 'm1',
      name: 'ラーメン',
      kana: 'らーめん',
      type: 'food',
      categoryId: 'cat1',
      sortNo: 1,
      timeLimit: 0,
      preTimeLimitMinutesLeft: 0,
      isOpenPrice: false,
      createdIn: '2024-01-01',
      prices: [
        const Price(
          taxRate: 10,
          taxType: TaxType.normal,
          amount: 800,
          tax: Tax.included,
          primary: true,
        ),
      ],
    );

void main() {
  group('MenuSelection', () {
    test('initialでquantity=1のMenuSelectionが作成される', () {
      final selection = MenuSelection.initial(makeMenu());
      expect(selection.quantity, 1);
    });

    test('createでquantityが1未満の場合はExceptionが発生する', () {
      expect(
        () => MenuSelection.create(menu: makeMenu(), quantity: 0),
        throwsException,
      );
    });

    test('incrementでquantityが1増加する', () {
      final selection = MenuSelection.create(menu: makeMenu(), quantity: 3);
      expect(selection.increment().quantity, 4);
    });

    test('quantityが9のときincrementしても9のまま', () {
      final selection = MenuSelection.create(menu: makeMenu(), quantity: 9);
      expect(selection.increment().quantity, 9);
    });

    test('decrementでquantityが1減少する', () {
      final selection = MenuSelection.create(menu: makeMenu(), quantity: 3);
      expect(selection.decrement().quantity, 2);
    });

    test('quantityが1のときdecrementしても1のまま', () {
      final selection = MenuSelection.create(menu: makeMenu(), quantity: 1);
      expect(selection.decrement().quantity, 1);
    });

    test('clearでquantityが1にリセットされる', () {
      final selection = MenuSelection.create(menu: makeMenu(), quantity: 5);
      expect(selection.clear().quantity, 1);
    });
  });
}
