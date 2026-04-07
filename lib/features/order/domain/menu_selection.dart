import 'menu.dart';

class MenuSelection {
  factory MenuSelection.initial(Menu menu) {
    return MenuSelection.create(menu: menu, quantity: 1);
  }

  factory MenuSelection.create({required Menu menu, required int quantity}) {
    if (quantity < 1) {
      throw Exception('Quantity must be at least 1');
    }
    return MenuSelection._(menu: menu, quantity: quantity);
  }

  MenuSelection._({
    required this.menu,
    required this.quantity,
  });

  final Menu menu;
  final int quantity;

  MenuSelection increment() {
    if (quantity >= 9) return this;
    return MenuSelection.create(menu: menu, quantity: quantity + 1);
  }

  MenuSelection decrement() {
    if (quantity <= 1) return this;
    return MenuSelection.create(menu: menu, quantity: quantity - 1);
  }

  MenuSelection clear() {
    return MenuSelection.create(menu: menu, quantity: 1);
  }
}
