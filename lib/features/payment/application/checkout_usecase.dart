import '../domain/repository/payment_repository.dart';

class CheckoutUsecase {
  CheckoutUsecase(this._repository);

  final PaymentRepository _repository;

  Future<void> execute(String tableUseId) {
    return _repository.checkout(tableUseId);
  }
}
