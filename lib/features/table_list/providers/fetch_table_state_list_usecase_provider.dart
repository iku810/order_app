import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../application/fetch_table_state_list_usecase.dart';
import 'table_repository_provider.dart';
import 'table_use_repository_provider.dart';

part 'fetch_table_state_list_usecase_provider.g.dart';

@riverpod
FetchTableStateListUsecase fetchTableStateListUsecase(Ref ref) {
  return FetchTableStateListUsecase(
    ref.watch(tableRepositoryProvider),
    ref.watch(tableUseRepositoryProvider),
  );
}
