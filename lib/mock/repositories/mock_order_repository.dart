import '../../features/order/domain/order.dart';
import '../../features/order/domain/order_result.dart';
import '../../features/order/domain/repository/order_repository.dart';

class MockOrderRepository implements OrderRepository {
  int _orderCounter = 1;

  @override
  Future<OrderResult> createOrder({
    required String tableUseId,
    required List<OrderItem> items,
    bool kitchenTicket = false,
    bool orderSlip = false,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 500));
    final orderId = 'order-mock-${_orderCounter++}';
    final now = DateTime.now();
    return OrderResult(
      orderId: orderId,
      ordered: now,
      tableUseId: tableUseId,
      items: items
          .map(
            (item) => OrderResultItem(
              id: 'order-item-${item.menuId}-${now.millisecondsSinceEpoch}',
              name: item.name,
              status: 'ordered',
              menuId: item.menuId,
              quantity: item.quantity,
              menuType: item.menuType,
            ),
          )
          .toList(),
    );
  }
}
