import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../infrastructure/providers/api_client_provider.dart';
import '../../../shared/auth/providers/contract_id_provider.dart';
import '../data/repository/table_use_repository_impl.dart';
import '../domain/repository/table_use_repository.dart';

part 'table_use_repository_provider.g.dart';

@riverpod
TableUseRepository tableUseRepository(Ref ref) {
  return TableUseRepositoryImpl(ref.watch(apiClientProvider), ref.watch(contractIdProvider));
}
