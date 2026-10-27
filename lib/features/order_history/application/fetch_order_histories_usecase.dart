import '../domain/order_history.dart';
import '../domain/repository/order_history_repository.dart';

class FetchOrderHistoriesUsecase {
  FetchOrderHistoriesUsecase(this._repository);

  final OrderHistoryRepository _repository;

  Future<List<OrderHistory>> execute(String tableUseId) async {
    final histories = await _repository.getOrderHistories(tableUseId);
    return histories
        .map(
          (h) => OrderHistory(
            orderId: h.orderId,
            ordered: h.ordered,
            tableUseId: h.tableUseId,
            items: h.items.where((item) => item.status != 'canceled').toList(),
          ),
        )
        .toList();
  }
}
