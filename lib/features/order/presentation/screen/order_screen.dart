import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/menu.dart';
import '../../providers/menu_list_provider.dart';
import 'cart_view.dart';
import 'menu_list_view.dart';

class OrderScreen extends ConsumerWidget {
  const OrderScreen({
    required this.storeId,
    required this.tableUseId,
    super.key,
  });

  final String storeId;
  final String tableUseId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menus = ref.watch(menuListProvider(storeId));

    return Scaffold(
      appBar: AppBar(title: const Text('注文')),
      body: menus.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (Object e, _) => Center(child: Text('エラーが発生しました: $e')),
        data: (List<Menu> menuList) => Column(
          children: [
            Expanded(
              child: MenuListView(
                storeId: storeId,
                tableUseId: tableUseId,
                menus: menuList,
              ),
            ),
            const Divider(),
            Expanded(
              child: CartView(
                storeId: storeId,
                tableUseId: tableUseId,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
