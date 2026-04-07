import '../../features/store/domain/repository/store_repository.dart';
import '../../features/store/domain/store.dart';

class MockStoreRepository implements StoreRepository {
  static const _stores = [
    Store(id: 'store-001', name: '渋谷店'),
    Store(id: 'store-002', name: '新宿店'),
  ];

  @override
  Future<StoreList> getStores({String? status, int? page}) async {
    await Future<void>.delayed(const Duration(milliseconds: 300));
    return const StoreList(_stores);
  }
}
