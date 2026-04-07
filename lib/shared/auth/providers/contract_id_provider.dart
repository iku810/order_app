import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/entity/contract_id.dart';

part 'contract_id_provider.g.dart';

@riverpod
ContractId contractId(Ref ref) {
  const value = String.fromEnvironment('CONTRACT_ID');
  return const ContractId(value);
}
