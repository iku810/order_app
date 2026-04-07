import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/menu.dart';
import '../domain/menu_selection.dart';

part 'item_selection_notifier.g.dart';

@riverpod
class ItemSelectionNotifier extends _$ItemSelectionNotifier {
  @override
  Map<String, MenuSelection> build(String storeId, String tableUseId) => {};

  void increment(Menu menu) {
    state = {...state, menu.id: _getOrInitial(menu).increment()};
  }

  void decrement(Menu menu) {
    state = {...state, menu.id: _getOrInitial(menu).decrement()};
  }

  void clear(Menu menu) {
    state = {...state, menu.id: MenuSelection.initial(menu)};
  }

  MenuSelection itemToOrderOf(Menu menu) => _getOrInitial(menu);

  MenuSelection _getOrInitial(Menu menu) {
    return state[menu.id] ?? MenuSelection.initial(menu);
  }
}
