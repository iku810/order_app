import '../../features/store/domain/repository/store_repository.dart';
import '../../features/store/domain/store.dart';

class MockStoreRepository implements StoreRepository {
  static final _stores = [
    Store(
      id: 'store-001',
      name: '渋谷店',
      startOfDay: '06:00',
      tablesCount: 10,
      createdAt: DateTime(2024, 1, 1),
      posStoreId: 'pos-store-001',
      tables: [
        const StoreTable(id: 'table-001', name: 'テーブル1', sortNo: 1),
        const StoreTable(id: 'table-002', name: 'テーブル2', sortNo: 2),
        const StoreTable(id: 'table-003', name: 'テーブル3', sortNo: 3),
        const StoreTable(id: 'table-004', name: 'カウンター1', category: 'カウンター', sortNo: 4),
        const StoreTable(id: 'table-005', name: 'カウンター2', category: 'カウンター', sortNo: 5),
      ],
    ),
    Store(
      id: 'store-002',
      name: '新宿店',
      startOfDay: '07:00',
      tablesCount: 15,
      createdAt: DateTime(2024, 3, 1),
      posStoreId: 'pos-store-002',
      tables: [
        const StoreTable(id: 'table-101', name: 'A-1', category: 'Aエリア', sortNo: 1),
        const StoreTable(id: 'table-102', name: 'A-2', category: 'Aエリア', sortNo: 2),
        const StoreTable(id: 'table-103', name: 'B-1', category: 'Bエリア', sortNo: 3),
      ],
    ),
  ];

  @override
  Future<List<Store>> getStores({String? status, int? page}) async {
    await Future<void>.delayed(const Duration(milliseconds: 300));
    return _stores;
  }

  @override
  Future<Store> getStore(String storeId, {String? withTables}) async {
    await Future<void>.delayed(const Duration(milliseconds: 200));
    return _stores.firstWhere(
      (s) => s.id == storeId,
      orElse: () => throw Exception('店舗が見つかりません: $storeId'),
    );
  }
}
