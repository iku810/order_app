import '../domain/order_history.dart';
import '../domain/repository/order_history_repository.dart';

class FetchOrderHistoriesUsecase {
  FetchOrderHistoriesUsecase(this._repository);

  final OrderHistoryRepository _repository;

  Future<List<OrderHistory>> execute(String tableUseId) =>
      _repository.getOrderHistories(tableUseId);
}
