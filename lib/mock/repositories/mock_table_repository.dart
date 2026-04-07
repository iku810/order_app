import '../../shared/table/domain/repository/table_repository.dart';
import '../../shared/table/domain/table.dart';

class MockTableRepository implements TableRepository {
  static const _tables = [
    Table(id: 'table-001', name: 'テーブル1', sortNo: 1),
    Table(id: 'table-002', name: 'テーブル2', sortNo: 2),
    Table(id: 'table-003', name: 'テーブル3', sortNo: 3),
    Table(id: 'table-004', name: 'カウンター1', category: 'カウンター', sortNo: 4),
    Table(id: 'table-005', name: 'カウンター2', category: 'カウンター', sortNo: 5),
  ];

  @override
  Future<List<Table>> getTables(String storeId) async {
    await Future<void>.delayed(const Duration(milliseconds: 200));
    return _tables.toList();
  }
}
