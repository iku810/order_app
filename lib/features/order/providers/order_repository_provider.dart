import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../infrastructure/providers/api_client_provider.dart';
import '../../../shared/auth/providers/contract_id_provider.dart';
import '../data/repository/order_repository_impl.dart';
import '../domain/repository/order_repository.dart';

part 'order_repository_provider.g.dart';

@riverpod
OrderRepository orderRepository(Ref ref) {
  return OrderRepositoryImpl(
      ref.watch(apiClientProvider), ref.watch(contractIdProvider));
}
