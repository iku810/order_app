import '../../features/table_list/domain/repository/table_use_repository.dart';
import '../../features/table_list/domain/table.dart';
import '../../features/table_list/domain/table_use.dart';

class MockTableUseRepository implements TableUseRepository {
  final List<TableUse> _tableUses = [
    TableUse.from(
      id: 'table-use-001',
      tables: const [Table(id: 'table-001', name: 'テーブル1')],
      status: TableUseStatus.using,
      number: 2,
      started: DateTime(2026, 3, 24, 10, 0),
      tableChargePerPerson: '0',
      serviceChargeRate: 0,
      totalPrice: '1600',
    ),
    TableUse.from(
      id: 'table-use-002',
      tables: const [Table(id: 'table-002', name: 'テーブル2')],
      status: TableUseStatus.using,
      number: 4,
      started: DateTime(2026, 3, 24, 10, 15),
      tableChargePerPerson: '0',
      serviceChargeRate: 0,
      totalPrice: '3200',
    ),
    TableUse.from(
      id: 'table-use-003',
      tables: const [
        Table(id: 'table-003', name: 'テーブル3'),
        Table(id: 'table-004', name: 'カウンター1'),
      ],
      status: TableUseStatus.using,
      number: 6,
      started: DateTime(2026, 3, 24, 11, 0),
      tableChargePerPerson: '0',
      serviceChargeRate: 0,
      totalPrice: '4800',
    ),
  ];

  @override
  Future<TableUseList> getTableUses({
    String? storeId,
    String? status,
    int? page,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 300));
    return TableUseList(values: _tableUses);
  }

  @override
  Future<TableUse> getTableUse(String tableUseId) async {
    await Future<void>.delayed(const Duration(milliseconds: 200));
    throw Exception('テーブル使用が見つかりません: $tableUseId');
  }

  @override
  Future<TableUse> checkIn({
    required String storeId,
    required List<String> tableIds,
    required int number,
    List<String>? customerGroupIds,
    String? staffId,
    String? tableChargePerPerson,
    int? serviceChargeRate,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 500));
    final id = 'table-use-mock-${DateTime.now().millisecondsSinceEpoch}';
    final tableUse = TableUse.from(
      id: id,
      tables: tableIds.map((tid) => Table(id: tid, name: 'テーブル$tid')).toList(),
      status: TableUseStatus.using,
      number: number,
      started: DateTime.now(),
      tableChargePerPerson: tableChargePerPerson ?? '0',
      serviceChargeRate: serviceChargeRate ?? 0,
      totalPrice: '0',
    );
    _tableUses.add(tableUse);
    return tableUse;
  }

  @override
  Future<void> checkout(
    String tableUseId, {
    bool makeTempTransaction = false,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 400));
  }

  @override
  Future<void> cancelTableUse(String tableUseId) async {
    await Future<void>.delayed(const Duration(milliseconds: 400));
  }

  @override
  Future<void> cancelOrder(
    String tableUseId, {
    required List<String> orderItemIds,
    bool kitchenTicket = false,
    bool orderSlip = false,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 400));
  }
}
