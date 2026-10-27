import '../domain/repository/store_repository.dart';
import '../domain/store.dart';

class FetchStoreListUsecase {
  FetchStoreListUsecase(this.repository);
  final StoreRepository repository;

  Future<StoreList> execute() async {
    final storeList = await repository.getStores();
    return storeList;
  }
}
