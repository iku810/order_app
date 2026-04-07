import '../domain/order_item.dart';
import '../domain/repository/order_repository.dart';

class CreateOrderUsecase {
  CreateOrderUsecase(this._repository);

  final OrderRepository _repository;

  Future<void> execute(
    String tableUseId, {
    required List<OrderItem> items,
  }) {
    return _repository.createOrder(
      tableUseId: tableUseId,
      items: items,
      kitchenTicket: true,
      orderSlip: true,
    );
  }
}
