import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/payment_summary.dart';
import 'get_payment_summary_usecase_provider.dart';

part 'payment_summary_provider.g.dart';

@riverpod
Future<PaymentSummary> paymentSummary(Ref ref, String tableUseId) {
  return ref.read(getPaymentSummaryUsecaseProvider).execute(tableUseId);
}
