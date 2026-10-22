import 'package:flutter_test/flutter_test.dart';
import 'package:order_app/features/order/domain/menu.dart';

Menu makeMenu({required List<Price> prices}) => Menu.create(
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
      prices: prices,
    );

const primaryPrice = Price(
  taxRate: 10,
  taxType: TaxType.normal,
  amount: 800,
  tax: Tax.included,
  primary: true,
);

const nonPrimaryPrice = Price(
  taxRate: 8,
  taxType: TaxType.reduced,
  amount: 600,
  tax: Tax.included,
  primary: false,
);

void main() {
  group('Menu.primaryPrice', () {
    test('primary=trueのPriceが返る', () {
      final menu = makeMenu(prices: [nonPrimaryPrice, primaryPrice]);
      expect(menu.primaryPrice.amount, 800);
    });

    test('primary=trueがない場合は先頭のPriceが返る', () {
      final menu = makeMenu(prices: [nonPrimaryPrice]);
      expect(menu.primaryPrice.amount, 600);
    });
  });

  group('Menu equality', () {
    test('同じidのMenuは等しい', () {
      final a = makeMenu(prices: [primaryPrice]);
      final b = makeMenu(prices: [nonPrimaryPrice]);
      expect(a, equals(b));
    });
  });
}
