import '../../features/order/domain/order_item.dart';
import '../../features/order/domain/repository/order_repository.dart';

class MockOrderRepository implements OrderRepository {
  @override
  Future<void> createOrder({
    required String tableUseId,
    required List<OrderItem> items,
    bool kitchenTicket = false,
    bool orderSlip = false,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 500));
  }
}
