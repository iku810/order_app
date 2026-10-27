import '../order_item.dart';

abstract class OrderRepository {
  Future<void> createOrder({
    required String tableUseId,
    required List<OrderItem> items,
    bool kitchenTicket = false,
    bool orderSlip = false,
  });
}
