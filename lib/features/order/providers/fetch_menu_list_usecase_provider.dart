import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../application/fetch_menu_list_usecase.dart';
import 'menu_repository_provider.dart';

part 'fetch_menu_list_usecase_provider.g.dart';

@riverpod
FetchMenuListUsecase fetchMenuListUsecase(Ref ref) {
  return FetchMenuListUsecase(ref.watch(menuRepositoryProvider));
}
