import 'dart:collection';

import 'menu.dart';
import 'menu_selection.dart';
import 'order_item.dart';

class CartItem {
  factory CartItem.create({required Menu menu, required int quantity}) {
    if (quantity < 1) {
      throw Exception('Quantity must be at least 1');
    }
    return CartItem._(menu: menu, quantity: quantity);
  }

  CartItem._({
    required this.menu,
    required this.quantity,
  });

  final Menu menu;
  final int quantity;

  CartItem addQuantity(int quantityToAdd) {
    return CartItem.create(menu: menu, quantity: quantity + quantityToAdd);
  }

  @override
  bool operator ==(Object other) =>
      other is CartItem && other.menu.id == menu.id;

  @override
  int get hashCode => menu.id.hashCode;

  OrderItem toOrderItem() {
    final price = menu.primaryPrice;
    return OrderItem(
      menuId: menu.id,
      quantity: quantity,
      menuType: menu.type,
      name: menu.name,
      sellingPrice: SellingPrice(
        amount: price.amount,
        tax: price.tax,
        taxRate: price.taxRate,
        taxType: price.taxType,
      ),
    );
  }
}

class Cart {
  Cart._({required List<CartItem> items}) : _items = items;

  factory Cart({required List<CartItem> items}) {
    if (items.map((item) => item.menu.id).toSet().length != items.length) {
      throw Exception('Duplicate menu items are not allowed in the cart');
    }
    return Cart._(items: items);
  }

  final List<CartItem> _items;
  UnmodifiableListView<CartItem> get items => UnmodifiableListView(_items);

  Cart add(MenuSelection item) {
    final existingIndex =
        _items.indexWhere((other) => other.menu.id == item.menu.id);
    if (existingIndex >= 0) {
      final updated = [..._items];
      updated[existingIndex] =
          updated[existingIndex].addQuantity(item.quantity);
      return Cart(items: updated);
    }
    return Cart(
      items: [
        ..._items,
        CartItem.create(menu: item.menu, quantity: item.quantity),
      ],
    );
  }

  Cart remove(CartItem item) {
    final updated = List<CartItem>.from(_items)..remove(item);
    return Cart(items: updated);
  }

  int subtotal() {
    return _items.fold(0, (sum, item) {
      return sum + item.menu.primaryPrice.amount * item.quantity;
    });
  }

  List<OrderItem> toOrderItems() {
    return _items.map((item) => item.toOrderItem()).toList();
  }
}
