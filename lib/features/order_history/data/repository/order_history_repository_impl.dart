import '../../../../infrastructure/network/api_client.dart';
import '../../../../shared/auth/domain/contract_id.dart';
import '../../../../shared/table/data/dto/request/cancel_order_request.dart';
import '../../../../shared/table/data/dto/response/table_use_detail_response.dart';
import '../../domain/order_history.dart';
import '../../domain/repository/order_history_repository.dart';

class OrderHistoryRepositoryImpl implements OrderHistoryRepository {
  OrderHistoryRepositoryImpl(this._apiClient, this._contractId);

  final ApiClient _apiClient;
  final ContractId _contractId;

  @override
  Future<List<OrderHistory>> getOrderHistories(String tableUseId) async {
    final response = await _apiClient.getTableUse(
      contractId: _contractId.value,
      tableUseId: tableUseId,
    );
    return response.orders.map(_toOrderHistory).toList();
  }

  @override
  Future<void> cancelOrder(
    String tableUseId, {
    required List<String> orderItemIds,
  }) async {
    await _apiClient.cancelOrder(
      contractId: _contractId.value,
      tableUseId: tableUseId,
      body: CancelOrderRequest(
        orderItems: orderItemIds,
        orderPrints: const CancelOrderPrintsRequest(
          kitchenTicket: false,
          orderSlip: false,
        ),
      ),
    );
  }

  OrderHistory _toOrderHistory(OrderInTableUseResponse dto) {
    return OrderHistory(
      orderId: dto.orderId,
      ordered: DateTime.parse(dto.ordered),
      items: dto.items.map(_toOrderItem).toList(),
      tableUseId: dto.tableUseId,
    );
  }

  OrderItem _toOrderItem(OrderItemInTableUseResponse dto) {
    return OrderItem(
      id: dto.id,
      name: dto.name,
      status: dto.status,
      menuId: dto.menuId,
      quantity: dto.quantity,
      menuType: dto.menuType,
      servedAt: dto.servedAt != null ? DateTime.parse(dto.servedAt!) : null,
      memo: dto.memo,
    );
  }
}
