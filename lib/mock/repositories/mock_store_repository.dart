import '../../features/store/domain/repository/store_repository.dart';
import '../../features/store/domain/store.dart';

class MockStoreRepository implements StoreRepository {
  static const _stores = [
    Store(id: 'store-001', name: '渋谷店'),
    Store(id: 'store-002', name: '新宿店'),
  ];

  static const _storeDetails = {
    'store-001': StoreDetail(
      id: 'store-001',
      name: '渋谷店',
      tables: [
        Table(id: 'table-001', name: 'テーブル1', sortNo: 1),
        Table(id: 'table-002', name: 'テーブル2', sortNo: 2),
        Table(id: 'table-003', name: 'テーブル3', sortNo: 3),
        Table(id: 'table-004', name: 'カウンター1', category: 'カウンター', sortNo: 4),
        Table(id: 'table-005', name: 'カウンター2', category: 'カウンター', sortNo: 5),
      ],
    ),
    'store-002': StoreDetail(
      id: 'store-002',
      name: '新宿店',
      tables: [
        Table(id: 'table-101', name: 'A-1', category: 'Aエリア', sortNo: 1),
        Table(id: 'table-102', name: 'A-2', category: 'Aエリア', sortNo: 2),
        Table(id: 'table-103', name: 'B-1', category: 'Bエリア', sortNo: 3),
      ],
    ),
  };

  @override
  Future<StoreList> getStores({String? status, int? page}) async {
    await Future<void>.delayed(const Duration(milliseconds: 300));
    return const StoreList(_stores);
  }

  @override
  Future<StoreDetail> getStore(String storeId, {String? withTables}) async {
    await Future<void>.delayed(const Duration(milliseconds: 200));
    final detail = _storeDetails[storeId];
    if (detail == null) throw Exception('店舗が見つかりません: $storeId');
    return detail;
  }
}
