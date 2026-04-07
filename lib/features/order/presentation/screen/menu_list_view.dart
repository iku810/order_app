import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/menu.dart';
import '../cart_notifier.dart';
import '../item_selection_notifier.dart';

class MenuListView extends ConsumerWidget {
  const MenuListView({
    required this.storeId,
    required this.tableUseId,
    required this.menus,
    super.key,
  });

  final String storeId;
  final String tableUseId;
  final List<Menu> menus;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartNotifier = ref.read(cartProvider(storeId, tableUseId).notifier);
    final selectionNotifier =
        ref.read(itemSelectionProvider(storeId, tableUseId).notifier);

    return ListView.builder(
      itemCount: menus.length,
      itemBuilder: (context, index) {
        final menu = menus[index];
        return _MenuRow(
          storeId: storeId,
          tableUseId: tableUseId,
          menu: menu,
          onAdd: () {
            cartNotifier.addToCart(selectionNotifier.itemToOrderOf(menu));
            selectionNotifier.clear(menu);
          },
        );
      },
    );
  }
}

class _MenuRow extends ConsumerWidget {
  const _MenuRow({
    required this.storeId,
    required this.tableUseId,
    required this.menu,
    required this.onAdd,
  });

  final String storeId;
  final String tableUseId;
  final Menu menu;
  final VoidCallback onAdd;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quantity = ref.watch(
      itemSelectionProvider(storeId, tableUseId)
          .select((map) => map[menu.id]?.quantity ?? 1),
    );
    final notifier =
        ref.read(itemSelectionProvider(storeId, tableUseId).notifier);

    return ListTile(
      title: Text(menu.name),
      subtitle: Text('¥${menu.primaryPrice.amount}'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(Icons.remove),
            onPressed: quantity <= 1 ? null : () => notifier.decrement(menu),
          ),
          SizedBox(
            width: 24,
            child: Text('$quantity', textAlign: TextAlign.center),
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: quantity >= 9 ? null : () => notifier.increment(menu),
          ),
          const SizedBox(width: 8),
          ElevatedButton(
            onPressed: onAdd,
            child: const Text('追加'),
          ),
        ],
      ),
    );
  }
}
