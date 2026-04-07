import '../../../../infrastructure/network/api_client.dart';
import '../../../../shared/auth/domain/contract_id.dart';
import '../../../../shared/table/data/dto/request/checkout_request.dart';
import '../../domain/payment_summary.dart';
import '../../domain/repository/payment_repository.dart';

class PaymentRepositoryImpl implements PaymentRepository {
  PaymentRepositoryImpl(this._apiClient, this._contractId);

  final ApiClient _apiClient;
  final ContractId _contractId;

  @override
  Future<PaymentSummary> getPaymentSummary(String tableUseId) async {
    final tableUseResponse = await _apiClient.getTableUse(
      contractId: _contractId.value,
      tableUseId: tableUseId,
    );

    final allItems =
        tableUseResponse.orders.expand((order) => order.items).toList();

    final paymentItems = allItems.map((item) {
      final price = item.sellingPrice;
      return PaymentItem(
        name: item.name,
        quantity: item.quantity,
        unitPrice: price != null ? (int.tryParse(price.amount) ?? 0) : 0,
        tax: _toPaymentTax(price?.tax),
        taxRate: price?.taxRate ?? 0,
        taxType: _toPaymentTaxType(price?.taxType),
      );
    }).toList();

    return PaymentSummary(
      tableUseId: tableUseId,
      items: paymentItems,
      tableChargePerPerson:
          int.tryParse(tableUseResponse.tableChargePerPerson) ?? 0,
      number: tableUseResponse.number,
      serviceChargeRate: tableUseResponse.serviceChargeRate,
    );
  }

  @override
  Future<void> checkout(String tableUseId) async {
    await _apiClient.checkout(
      contractId: _contractId.value,
      tableUseId: tableUseId,
      body: const CheckoutRequest(makeTempTransaction: false),
    );
  }

  PaymentTax _toPaymentTax(String? tax) => switch (tax) {
        'include' || 'included' => PaymentTax.include,
        'exclude' || 'excluded' => PaymentTax.exclude,
        _ => PaymentTax.none,
      };

  PaymentTaxType _toPaymentTaxType(String? taxType) => switch (taxType) {
        'normal' => PaymentTaxType.normal,
        'reduced' => PaymentTaxType.reduced,
        _ => PaymentTaxType.none,
      };
}
