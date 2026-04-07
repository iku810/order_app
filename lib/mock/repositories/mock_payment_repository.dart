import '../../features/payment/domain/payment_summary.dart';
import '../../features/payment/domain/repository/payment_repository.dart';

class MockPaymentRepository implements PaymentRepository {
  @override
  Future<PaymentSummary> getPaymentSummary(String tableUseId) async {
    await Future<void>.delayed(const Duration(milliseconds: 300));
    return PaymentSummary(
      tableUseId: tableUseId,
      items: const [
        PaymentItem(
          name: 'ビール生',
          quantity: 2,
          unitPrice: 600,
          tax: PaymentTax.include,
          taxRate: 10,
          taxType: PaymentTaxType.normal,
        ),
        PaymentItem(
          name: '唐揚げ',
          quantity: 1,
          unitPrice: 500,
          tax: PaymentTax.include,
          taxRate: 10,
          taxType: PaymentTaxType.normal,
        ),
        PaymentItem(
          name: 'ハイボール',
          quantity: 1,
          unitPrice: 500,
          tax: PaymentTax.exclude,
          taxRate: 10,
          taxType: PaymentTaxType.normal,
        ),
      ],
      tableChargePerPerson: 300,
      number: 2,
      serviceChargeRate: 10,
    );
  }

  @override
  Future<void> checkout(String tableUseId) async {
    await Future<void>.delayed(const Duration(milliseconds: 500));
  }
}
