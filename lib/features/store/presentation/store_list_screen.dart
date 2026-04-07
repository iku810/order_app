import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'store_list_notifier.dart';

class StoreListScreen extends ConsumerWidget {
  const StoreListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(storeListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('店舗一覧'),
      ),
      body: state.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('エラーが発生しました: $e')),
        data: (storeList) => storeList.values.isEmpty
            ? const Center(child: Text('店舗がありません'))
            : RefreshIndicator(
                onRefresh: () => ref.read(storeListProvider.notifier).refresh(),
                child: ListView.builder(
                  itemCount: storeList.values.length,
                  itemBuilder: (context, index) {
                    final store = storeList.values[index];
                    return ListTile(
                      title: Text(store.name),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {
                        // TODO: 店舗詳細画面への遷移
                      },
                    );
                  },
                ),
              ),
      ),
    );
  }
}
