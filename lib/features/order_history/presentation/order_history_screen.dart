import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../order/presentation/order_route.dart';
import '../../payment/presentation/payment_route.dart';
import 'order_history_notifier.dart';

class OrderHistoryScreen extends ConsumerWidget {
  const OrderHistoryScreen({
    required this.storeId,
    required this.tableUseId,
    super.key,
  });

  final String storeId;
  final String tableUseId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(orderHistoryProvider(tableUseId));

    return Scaffold(
      appBar: AppBar(
        title: const Text('注文履歴'),
      ),
      body: state.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('エラーが発生しました: $e')),
        data: (histories) {
          final items = histories.expand((h) => h.items).toList();
          if (items.isEmpty) {
            return const Center(child: Text('注文履歴がありません'));
          }
          return ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return ListTile(
                title: Text(item.name),
                subtitle: Text('${item.quantity}点'),
                trailing: IconButton(
                  icon: const Icon(Icons.delete_outline),
                  onPressed: () => _confirmCancel(context, ref, item.id),
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    OrderRoute(storeId: storeId, tableUseId: tableUseId)
                        .go(context);
                  },
                  child: const Text('追加'),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    PaymentRoute(storeId: storeId, tableUseId: tableUseId)
                        .go(context);
                  },
                  child: const Text('会計'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _confirmCancel(
    BuildContext context,
    WidgetRef ref,
    String orderItemId,
  ) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('注文取り消し'),
        content: const Text('この注文を取り消しますか？'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('キャンセル'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('取り消す'),
          ),
        ],
      ),
    );
    if (confirmed == true) {
      await ref
          .read(orderHistoryProvider(tableUseId).notifier)
          .cancelOrder([orderItemId]);
    }
  }
}
