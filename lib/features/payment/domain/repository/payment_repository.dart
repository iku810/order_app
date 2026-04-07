import '../payment_summary.dart';

abstract class PaymentRepository {
  Future<PaymentSummary> getPaymentSummary(String tableUseId);
  Future<void> checkout(String tableUseId);
}
