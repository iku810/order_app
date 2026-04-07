import '../../features/table_list/domain/repository/table_use_repository.dart';
import '../../features/table_list/domain/table_use.dart';

class MockTableUseRepository implements TableUseRepository {
  final List<TableUse> _tableUses = [
    TableUse(
      id: 'table-use-001',
      storeId: 'store-001',
      tables: const [Table(id: 'table-001', name: 'テーブル1')],
      number: 2,
      status: 'using',
      started: DateTime.now().subtract(const Duration(hours: 1)),
      customerGroups: const [],
      quantity: 2,
      tableChargePerPerson: '0',
      serviceChargeRate: 0,
      totalPrice: '1600',
      uuid: 'uuid-table-use-001',
      orders: [
        TableUseOrder(
          orderId: 'order-001',
          ordered: DateTime.now().subtract(const Duration(minutes: 30)),
          tableUseId: 'table-use-001',
          items: const [
            TableUseOrderItem(
              id: 'order-item-001',
              name: '唐揚げ',
              status: 'served',
              menuId: 'menu-001',
              quantity: 2,
              menuType: 'food',
            ),
            TableUseOrderItem(
              id: 'order-item-002',
              name: 'ビール(生)',
              status: 'served',
              menuId: 'menu-010',
              quantity: 2,
              menuType: 'drink',
            ),
          ],
        ),
      ],
    ),
    TableUse(
      id: 'table-use-002',
      storeId: 'store-001',
      tables: const [Table(id: 'table-002', name: 'テーブル2')],
      number: 4,
      status: 'using',
      started: DateTime.now().subtract(const Duration(minutes: 45)),
      customerGroups: const [],
      quantity: 4,
      tableChargePerPerson: '0',
      serviceChargeRate: 0,
      totalPrice: '3200',
      uuid: 'uuid-table-use-002',
    ),
    TableUse(
      id: 'table-use-003',
      storeId: 'store-001',
      tables: const [Table(id: 'table-003', name: 'テーブル3')],
      number: 1,
      status: 'empty',
      started: DateTime.now().subtract(const Duration(hours: 3)),
      ended: DateTime.now().subtract(const Duration(hours: 1)),
      customerGroups: const [],
      quantity: 1,
      tableChargePerPerson: '0',
      serviceChargeRate: 0,
      totalPrice: '500',
      uuid: 'uuid-table-use-003',
    ),
  ];

  int _tableUseCounter = 10;

  @override
  Future<List<TableUse>> getTableUses({
    String? storeId,
    String? status,
    int? page,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 300));
    var result = _tableUses.toList();
    if (storeId != null) {
      result = result.where((t) => t.storeId == storeId).toList();
    }
    if (status != null) {
      result = result.where((t) => t.status == status).toList();
    }
    return result;
  }

  @override
  Future<TableUse> getTableUse(String tableUseId) async {
    await Future<void>.delayed(const Duration(milliseconds: 200));
    return _tableUses.firstWhere(
      (t) => t.id == tableUseId,
      orElse: () => throw Exception('テーブル使用が見つかりません: $tableUseId'),
    );
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
    final id = 'table-use-mock-${_tableUseCounter++}';
    final tables = tableIds
        .map((tid) => Table(id: tid, name: 'テーブル$tid'))
        .toList();
    final tableUse = TableUse(
      id: id,
      storeId: storeId,
      tables: tables,
      number: number,
      status: 'using',
      started: DateTime.now(),
      customerGroups: const [],
      quantity: number,
      tableChargePerPerson: tableChargePerPerson ?? '0',
      serviceChargeRate: serviceChargeRate ?? 0,
      totalPrice: '0',
      uuid: 'uuid-$id',
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
    final index = _tableUses.indexWhere((t) => t.id == tableUseId);
    if (index == -1) throw Exception('テーブル使用が見つかりません: $tableUseId');
    final existing = _tableUses[index];
    _tableUses[index] = TableUse(
      id: existing.id,
      storeId: existing.storeId,
      tables: existing.tables,
      number: existing.number,
      status: 'empty',
      started: existing.started,
      ended: DateTime.now(),
      customerGroups: existing.customerGroups,
      quantity: existing.quantity,
      tableChargePerPerson: existing.tableChargePerPerson,
      serviceChargeRate: existing.serviceChargeRate,
      totalPrice: existing.totalPrice,
      uuid: existing.uuid,
      orders: existing.orders,
    );
  }

  @override
  Future<void> cancelTableUse(String tableUseId) async {
    await Future<void>.delayed(const Duration(milliseconds: 400));
    _tableUses.removeWhere((t) => t.id == tableUseId);
  }

  @override
  Future<void> cancelOrder(
    String tableUseId, {
    required List<String> orderItemIds,
    bool kitchenTicket = false,
    bool orderSlip = false,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 400));
    final index = _tableUses.indexWhere((t) => t.id == tableUseId);
    if (index == -1) throw Exception('テーブル使用が見つかりません: $tableUseId');
    final existing = _tableUses[index];
    final updatedOrders = existing.orders
        ?.map(
          (order) => TableUseOrder(
            orderId: order.orderId,
            ordered: order.ordered,
            tableUseId: order.tableUseId,
            items: order.items
                .where((item) => !orderItemIds.contains(item.id))
                .toList(),
          ),
        )
        .toList();
    _tableUses[index] = TableUse(
      id: existing.id,
      storeId: existing.storeId,
      tables: existing.tables,
      number: existing.number,
      status: existing.status,
      started: existing.started,
      ended: existing.ended,
      customerGroups: existing.customerGroups,
      quantity: existing.quantity,
      tableChargePerPerson: existing.tableChargePerPerson,
      serviceChargeRate: existing.serviceChargeRate,
      totalPrice: existing.totalPrice,
      uuid: existing.uuid,
      orders: updatedOrders,
    );
  }
}
