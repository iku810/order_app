import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../application/checkout_usecase.dart';
import 'payment_repository_provider.dart';

part 'checkout_usecase_provider.g.dart';

@riverpod
CheckoutUsecase checkoutUsecase(Ref ref) {
  return CheckoutUsecase(ref.watch(paymentRepositoryProvider));
}
