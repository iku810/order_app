import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../application/get_payment_summary_usecase.dart';
import 'payment_repository_provider.dart';

part 'get_payment_summary_usecase_provider.g.dart';

@riverpod
GetPaymentSummaryUsecase getPaymentSummaryUsecase(Ref ref) {
  return GetPaymentSummaryUsecase(ref.watch(paymentRepositoryProvider));
}
