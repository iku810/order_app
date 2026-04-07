import '../../features/order_history/domain/order_history.dart';
import '../../features/order_history/domain/repository/order_history_repository.dart';

class MockOrderHistoryRepository implements OrderHistoryRepository {
  final _histories = [
    OrderHistory(
      orderId: 'order-001',
      ordered: DateTime(2026, 3, 24, 10, 5),
      tableUseId: 'table-use-001',
      items: const [
        OrderItem(
          id: 'item-001',
          name: 'ビール',
          status: 'served',
          menuId: 'menu-001',
          quantity: 2,
          menuType: 'drink',
        ),
        OrderItem(
          id: 'item-002',
          name: '唐揚げ',
          status: 'served',
          menuId: 'menu-002',
          quantity: 1,
          menuType: 'food',
        ),
      ],
    ),
    OrderHistory(
      orderId: 'order-002',
      ordered: DateTime(2026, 3, 24, 10, 30),
      tableUseId: 'table-use-001',
      items: const [
        OrderItem(
          id: 'item-003',
          name: 'ハイボール',
          status: 'ordered',
          menuId: 'menu-003',
          quantity: 1,
          menuType: 'drink',
        ),
      ],
    ),
  ];

  @override
  Future<List<OrderHistory>> getOrderHistories(String tableUseId) async {
    await Future<void>.delayed(const Duration(milliseconds: 300));
    return _histories
        .where((h) => h.tableUseId == tableUseId)
        .toList();
  }

  @override
  Future<void> cancelOrder(
    String tableUseId, {
    required List<String> orderItemIds,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 400));
  }
}
