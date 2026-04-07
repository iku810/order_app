import '../../../../infrastructure/network/api_client.dart';
import '../../../../shared/auth/domain/entity/contract_id.dart';
import '../../domain/order.dart';
import '../../domain/order_result.dart';
import '../../domain/repository/order_repository.dart';
import '../dto/request/order_request.dart';

class OrderRepositoryImpl implements OrderRepository {
  OrderRepositoryImpl(this._apiClient, this._contractId);

  final ApiClient _apiClient;

  final ContractId _contractId;


  @override
  Future<OrderResult> createOrder({
    required String tableUseId,
    required List<OrderItem> items,
    bool kitchenTicket = false,
    bool orderSlip = false,
  }) async {
    final body = OrderRequest(
      items: items
          .map(
            (item) => OrderItemRequest(
              menuId: item.menuId,
              quantity: item.quantity,
              menuType: item.menuType,
              name: item.name,
              sellingPrice: SellingPriceRequest(
                amount: item.sellingPrice.amount,
                tax: item.sellingPrice.tax,
                taxRate: item.sellingPrice.taxRate,
                taxType: item.sellingPrice.taxType,
              ),
              discount: item.discount != null
                  ? DiscountRequest(rate: item.discount!.rate)
                  : null,
            ),
          )
          .toList(),
      orderPrints: OrderPrintsRequest(
        kitchenTicket: kitchenTicket,
        orderSlip: orderSlip,
      ),
    );
    final response = await _apiClient.createOrder(
      contractId: _contractId.value,
      tableUseId: tableUseId,
      body: body,
    );
    return OrderResult(
      orderId: response.orderId,
      ordered: DateTime.parse(response.ordered),
      items: response.items
          .map(
            (i) => OrderResultItem(
              id: i.id,
              name: i.name,
              status: i.status,
              servedAt:
                  i.servedAt != null ? DateTime.parse(i.servedAt!) : null,
              memo: i.memo,
              menuId: i.menuId,
              quantity: i.quantity,
              menuType: i.menuType,
            ),
          )
          .toList(),
      tableUseId: response.tableUseId,
    );
  }
}
