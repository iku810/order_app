import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/cart.dart';
import '../domain/menu_selection.dart';

part 'cart_notifier.g.dart';

@riverpod
class CartNotifier extends _$CartNotifier {
  @override
  Cart build(String storeId, String tableUseId) {
    return Cart(items: []);
  }

  void addToCart(MenuSelection itemToOrder) {
    state = state.add(itemToOrder);
  }

  void removeFromCart(int index) {
    state = state.remove(state.items[index]);
  }

  void clear() {
    state = Cart(items: []);
  }
}
