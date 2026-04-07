import '../../../../infrastructure/network/api_client.dart';
import '../../../../shared/auth/domain/contract_id.dart';
import '../../domain/order_item.dart';
import '../../domain/repository/order_repository.dart';
import '../dto/request/order_request.dart';

class OrderRepositoryImpl implements OrderRepository {
  OrderRepositoryImpl(this._apiClient, this._contractId);

  final ApiClient _apiClient;

  final ContractId _contractId;

  @override
  Future<void> createOrder({
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
                amount: item.sellingPrice.amount.toString(),
                tax: item.sellingPrice.tax.name,
                taxRate: item.sellingPrice.taxRate,
                taxType: item.sellingPrice.taxType.name,
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
    await _apiClient.createOrder(
      contractId: _contractId.value,
      tableUseId: tableUseId,
      body: body,
    );
  }
}
