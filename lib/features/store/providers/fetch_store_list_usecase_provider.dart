import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../application/fetch_store_list_usecase.dart';
import 'store_repository_provider.dart';

part 'fetch_store_list_usecase_provider.g.dart';

@riverpod
FetchStoreListUsecase fetchStoreListUsecase(Ref ref) {
  return FetchStoreListUsecase(ref.watch(storeRepositoryProvider));
}
