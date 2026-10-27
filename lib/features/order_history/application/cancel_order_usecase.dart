import '../domain/repository/order_history_repository.dart';

class CancelOrderUsecase {
  CancelOrderUsecase(this._repository);

  final OrderHistoryRepository _repository;

  Future<void> execute(
    String tableUseId, {
    required List<String> orderItemIds,
  }) {
    return _repository.cancelOrder(
      tableUseId,
      orderItemIds: orderItemIds,
    );
  }
}
