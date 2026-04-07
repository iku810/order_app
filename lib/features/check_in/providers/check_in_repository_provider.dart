import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../infrastructure/providers/api_client_provider.dart';
import '../../../shared/auth/providers/contract_id_provider.dart';
import '../data/repository/check_in_repository_impl.dart';
import '../domain/repository/check_in_repository.dart';

part 'check_in_repository_provider.g.dart';

@riverpod
CheckInRepository checkInRepository(Ref ref) {
  return CheckInRepositoryImpl(
    ref.watch(apiClientProvider),
    ref.watch(contractIdProvider),
  );
}
