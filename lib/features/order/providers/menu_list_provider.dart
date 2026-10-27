import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/menu.dart';
import 'fetch_menu_list_usecase_provider.dart';

part 'menu_list_provider.g.dart';

@riverpod
Future<List<Menu>> menuList(Ref ref, String storeId) {
  return ref.read(fetchMenuListUsecaseProvider).execute(storeId);
}
