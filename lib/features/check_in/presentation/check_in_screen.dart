import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../table_list/presentation/table_list_route.dart';
import '../../table_list/presentation/table_state_list_notifier.dart';
import '../domain/customer_number.dart';
import 'check_in_notifier.dart';

class CheckInScreen extends ConsumerWidget {
  const CheckInScreen({
    required this.storeId,
    required this.tableId,
    super.key,
  });

  final String storeId;
  final String tableId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      checkInProvider(storeId, tableId).select((s) => s.submission),
      (_, AsyncValue<bool> submission) {
        switch (submission) {
          case AsyncData(value: true):
            ref.invalidate(tableStateListProvider(storeId));
            TableListRoute(storeId: storeId).go(context);
          case AsyncError(:final error):
            showDialog<void>(
              context: context,
              builder: (_) => AlertDialog(
                title: const Text('エラー'),
                content: Text('チェックインに失敗しました。\n$error'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('閉じる'),
                  ),
                ],
              ),
            );
          default:
            break;
        }
      },
    );

    final state = ref.watch(checkInProvider(storeId, tableId));
    final isLoading = state.submission is AsyncLoading;

    return Scaffold(
      appBar: AppBar(
        title: const Text('チェックイン'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('人数'),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: state.customerNumber.canDecrement
                      ? () => ref
                          .read(checkInProvider(storeId, tableId).notifier)
                          .decrement()
                      : null,
                  icon: const Icon(Icons.remove_circle_outline),
                  iconSize: 36,
                ),
                const SizedBox(width: 24),
                Text(
                  '${state.customerNumber.value}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(width: 24),
                IconButton(
                  onPressed: state.customerNumber.canIncrement
                      ? () => ref
                          .read(checkInProvider(storeId, tableId).notifier)
                          .increment()
                      : null,
                  icon: const Icon(Icons.add_circle_outline),
                  iconSize: 36,
                ),
              ],
            ),
            if (!state.customerNumber.canDecrement)
              const Text(
                '人数は${CustomerNumber.min}人以上です',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.red),
              )
            else if (!state.customerNumber.canIncrement)
              const Text(
                '人数は${CustomerNumber.max}人以下です',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.red),
              ),
            const SizedBox(height: 32),
            FilledButton(
              onPressed: isLoading
                  ? null
                  : () => ref
                      .read(checkInProvider(storeId, tableId).notifier)
                      .checkIn(),
              child: isLoading
                  ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Text('チェックイン'),
            ),
          ],
        ),
      ),
    );
  }
}
