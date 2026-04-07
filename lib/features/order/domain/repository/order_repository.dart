import '../order.dart';
import '../order_result.dart';

abstract class OrderRepository {
  Future<OrderResult> createOrder({
    required String tableUseId,
    required List<OrderItem> items,
    bool kitchenTicket = false,
    bool orderSlip = false,
  });
}
