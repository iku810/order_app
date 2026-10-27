import '../domain/menu.dart';
import '../domain/repository/menu_repository.dart';

class FetchMenuListUsecase {
  FetchMenuListUsecase(this._repository);

  final MenuRepository _repository;

  Future<List<Menu>> execute(String storeId) {
    return _repository.getStoreMenus(storeId);
  }
}
