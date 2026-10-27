import '../domain/payment_summary.dart';
import '../domain/repository/payment_repository.dart';

class GetPaymentSummaryUsecase {
  GetPaymentSummaryUsecase(this._repository);

  final PaymentRepository _repository;

  Future<PaymentSummary> execute(String tableUseId) {
    return _repository.getPaymentSummary(tableUseId);
  }
}
