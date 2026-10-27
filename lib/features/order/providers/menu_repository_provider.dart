import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../infrastructure/providers/api_client_provider.dart';
import '../../../shared/auth/providers/contract_id_provider.dart';
import '../data/repository/menu_repository_impl.dart';
import '../domain/repository/menu_repository.dart';

part 'menu_repository_provider.g.dart';

@riverpod
MenuRepository menuRepository(Ref ref) {
  return MenuRepositoryImpl(
      ref.watch(apiClientProvider), ref.watch(contractIdProvider));
}
