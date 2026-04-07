import 'package:flutter/material.dart' hide Table;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../check_in/presentation/check_in_route.dart';
import '../domain/table_state.dart';
import 'table_state_list_notifier.dart';

class TableListScreen extends ConsumerWidget {
  const TableListScreen({required this.storeId, super.key});

  final String storeId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tableStateList = ref.watch(tableStateListProvider(storeId));

    return Scaffold(
      appBar: AppBar(
        title: const Text('テーブル一覧'),
      ),
      body: tableStateList.when(
        skipLoadingOnReload: true,
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('エラーが発生しました: $e')),
        data: (tables) {
          if (tables.isEmpty) {
            return const Center(child: Text('テーブルがありません'));
          }
          return RefreshIndicator(
            onRefresh: () async {
              await ref
                  .read(tableStateListProvider(storeId).notifier)
                  .refresh();
            },
            child: ListView.builder(
              itemCount: tables.length,
              itemBuilder: (context, index) {
                final table = tables[index];
                return _TableListTile(storeId: storeId, table: table);
              },
            ),
          );
        },
      ),
    );
  }
}

class _TableListTile extends StatelessWidget {
  const _TableListTile({required this.storeId, required this.table});

  final String storeId;
  final TableState table;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(table.name),
      subtitle: switch (table) {
        UncheckedInTable() => const Text('空席'),
        final CheckedInTable t => Text(
            '利用中 - ${_elapsed(t.started)} - 合計: ${t.totalPrice}',
          ),
      },
      leading: Icon(
        Icons.table_restaurant,
        color: table is CheckedInTable ? Colors.green : Colors.grey,
      ),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {
        switch (table) {
          case UncheckedInTable():
            CheckInRoute(storeId: storeId, tableId: table.id).go(context);
          case CheckedInTable():
            // TODO: 注文履歴画面への遷移
            break;
        }
      },
    );
  }

  String _elapsed(DateTime started) {
    final diff = DateTime.now().difference(started);
    final h = diff.inHours;
    final m = diff.inMinutes % 60;
    return h > 0 ? '$h時間$m分' : '$m分';
  }
}
