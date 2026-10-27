import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../table_list/presentation/table_list_route.dart';
import '../cart_notifier.dart';
import '../order_submission_notifier.dart';

class CartView extends ConsumerWidget {
  const CartView({
    required this.storeId,
    required this.tableUseId,
    super.key,
  });

  final String storeId;
  final String tableUseId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      orderSubmissionProvider(storeId, tableUseId),
      (previous, next) {
        if (next is AsyncData && previous is AsyncLoading) {
          if (!context.mounted) return;
          TableListRoute(storeId: storeId).go(context);
          return;
        }

        if (next is AsyncError) {
          if (!context.mounted) return;
          showDialog<void>(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('注文エラー'),
              content: Text('注文に失敗しました: ${next.error}'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('閉じる'),
                ),
              ],
            ),
          );
        }
      },
    );

    final cartItems = ref.watch(cartProvider(storeId, tableUseId)).items;
    final isSubmitting =
        ref.watch(orderSubmissionProvider(storeId, tableUseId)) is AsyncLoading;

    if (cartItems.isEmpty) {
      return const Center(child: Text('カートが空です'));
    }

    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: cartItems.length,
            itemBuilder: (context, index) {
              final item = cartItems[index];
              return Dismissible(
                key: ValueKey(item.menu.id),
                direction: DismissDirection.endToStart,
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: const Icon(Icons.delete, color: Colors.white),
                ),
                onDismissed: (_) => ref
                    .read(cartProvider(storeId, tableUseId).notifier)
                    .removeFromCart(index),
                child: ListTile(
                  title: Text(item.menu.name),
                  trailing: Text('${item.quantity}点'),
                ),
              );
            },
          ),
        ),
        const Divider(),
        ElevatedButton(
          onPressed: isSubmitting
              ? null
              : () => ref
                  .read(orderSubmissionProvider(storeId, tableUseId).notifier)
                  .submit(),
          child: isSubmitting
              ? const SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : const Text('注文を確定'),
        ),
      ],
    );
  }
}
