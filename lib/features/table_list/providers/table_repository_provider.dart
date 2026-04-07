import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../infrastructure/providers/api_client_provider.dart';
import '../../../shared/auth/providers/contract_id_provider.dart';
import '../../../shared/table/domain/repository/table_repository.dart';
import '../data/repository/table_repository_impl.dart';

part 'table_repository_provider.g.dart';

@riverpod
TableRepository tableRepository(Ref ref) {
  return TableRepositoryImpl(
    ref.watch(apiClientProvider),
    ref.watch(contractIdProvider),
  );
}
