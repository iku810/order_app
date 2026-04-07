import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/table_state.dart';
import '../providers/fetch_table_state_list_usecase_provider.dart';

part 'table_state_list_notifier.g.dart';

@riverpod
class TableStateListNotifier extends _$TableStateListNotifier {
  @override
  Future<List<TableState>> build(String storeId) async {
    return _fetch();
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(_fetch);
  }

  Future<List<TableState>> _fetch() async {
    return ref.read(fetchTableStateListUsecaseProvider).execute(storeId);
  }
}
