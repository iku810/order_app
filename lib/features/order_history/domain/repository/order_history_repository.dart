import '../order_history.dart';

abstract class OrderHistoryRepository {
  Future<List<OrderHistory>> getOrderHistories(String tableUseId);

  Future<void> cancelOrder(
    String tableUseId, {
    required List<String> orderItemIds,
  });
}
