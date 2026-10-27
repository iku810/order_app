import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../infrastructure/providers/api_client_provider.dart';
import '../../../shared/auth/providers/contract_id_provider.dart';
import '../data/repository/store_repository_impl.dart';
import '../domain/repository/store_repository.dart';

part 'store_repository_provider.g.dart';

@riverpod
StoreRepository storeRepository(Ref ref) {
  return StoreRepositoryImpl(
      ref.watch(apiClientProvider), ref.watch(contractIdProvider));
}
