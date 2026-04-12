import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/store.dart';
import '../providers/fetch_store_list_usecase_provider.dart';

part 'store_list_notifier.g.dart';

@riverpod
class StoreListNotifier extends _$StoreListNotifier {
  @override
  Future<StoreList> build() async {
    return _fetch();
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(_fetch);
  }

  Future<StoreList> _fetch() {
    return ref.read(fetchStoreListUsecaseProvider).execute();
  }
}
