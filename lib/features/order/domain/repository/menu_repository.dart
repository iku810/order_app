import '../menu.dart';

abstract class MenuRepository {
  Future<List<Menu>> getStoreMenus(String storeId, {int? page});
}
