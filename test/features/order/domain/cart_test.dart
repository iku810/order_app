import 'package:flutter_test/flutter_test.dart';
import 'package:order_app/features/order/domain/cart.dart';
import 'package:order_app/features/order/domain/menu.dart';
import 'package:order_app/features/order/domain/menu_selection.dart';

Menu makeMenu({String id = 'm1', String name = 'ラーメン', int amount = 800}) =>
    Menu.create(
      id: id,
      name: name,
      kana: 'らーめん',
      type: 'food',
      categoryId: 'cat1',
      sortNo: 1,
      timeLimit: 0,
      preTimeLimitMinutesLeft: 0,
      isOpenPrice: false,
      createdIn: '2024-01-01',
      prices: [
        Price(
          taxRate: 10,
          taxType: TaxType.normal,
          amount: amount,
          tax: Tax.included,
          primary: true,
        ),
      ],
    );

void main() {
  group('CartItem', () {
    test('quantityが1未満の場合はExceptionが発生する', () {
      expect(
        () => CartItem.create(menu: makeMenu(), quantity: 0),
        throwsException,
      );
    });

    test('同じmenu.idのCartItemは等しい', () {
      final a = CartItem.create(menu: makeMenu(id: 'm1'), quantity: 1);
      final b = CartItem.create(menu: makeMenu(id: 'm1'), quantity: 3);
      expect(a, b);
    });

    test('異なるmenu.idのCartItemは等しくない', () {
      final a = CartItem.create(menu: makeMenu(id: 'm1'), quantity: 1);
      final b = CartItem.create(menu: makeMenu(id: 'm2'), quantity: 1);
      expect(a, isNot(b));
    });

    test('addQuantityで数量が加算された新しいCartItemが返る', () {
      final item = CartItem.create(menu: makeMenu(), quantity: 2);
      final result = item.addQuantity(3);
      expect(result.quantity, 5);
    });
  });

  group('Cart', () {
    test('重複するmenu.idがある場合はExceptionが発生する', () {
      final item = CartItem.create(menu: makeMenu(id: 'm1'), quantity: 1);
      expect(
        () => Cart(items: [item, item]),
        throwsException,
      );
    });

    test('addで新しいアイテムが追加される', () {
      final cart = Cart(items: []);
      final selection = MenuSelection.create(menu: makeMenu(id: 'm1'), quantity: 2);
      final result = cart.add(selection);
      expect(result.items.length, 1);
      expect(result.items.first.quantity, 2);
    });

    test('addで既存アイテムの数量が加算される', () {
      final menu = makeMenu(id: 'm1');
      final cart = Cart(
        items: [CartItem.create(menu: menu, quantity: 1)],
      );
      final selection = MenuSelection.create(menu: menu, quantity: 3);
      final result = cart.add(selection);
      expect(result.items.length, 1);
      expect(result.items.first.quantity, 4);
    });

    test('removeでアイテムが削除される', () {
      final item = CartItem.create(menu: makeMenu(), quantity: 1);
      final cart = Cart(items: [item]);
      final result = cart.remove(item);
      expect(result.items, isEmpty);
    });

    test('subtotalで合計金額が計算される', () {
      final cart = Cart(
        items: [
          CartItem.create(menu: makeMenu(id: 'm1', amount: 800), quantity: 2),
          CartItem.create(menu: makeMenu(id: 'm2', amount: 500), quantity: 1),
        ],
      );
      expect(cart.subtotal(), 2100);
    });

    test('toOrderItemsでOrderItemリストに変換される', () {
      final cart = Cart(
        items: [
          CartItem.create(menu: makeMenu(id: 'm1', name: 'ラーメン'), quantity: 2),
        ],
      );
      final orderItems = cart.toOrderItems();
      expect(orderItems.length, 1);
      expect(orderItems.first.menuId, 'm1');
      expect(orderItems.first.quantity, 2);
      expect(orderItems.first.name, 'ラーメン');
    });
  });
}
