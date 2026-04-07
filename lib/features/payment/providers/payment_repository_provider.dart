import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../infrastructure/providers/api_client_provider.dart';
import '../../../shared/auth/providers/contract_id_provider.dart';
import '../data/repository/payment_repository_impl.dart';
import '../domain/repository/payment_repository.dart';

part 'payment_repository_provider.g.dart';

@riverpod
PaymentRepository paymentRepository(Ref ref) {
  return PaymentRepositoryImpl(
    ref.watch(apiClientProvider),
    ref.watch(contractIdProvider),
  );
}
