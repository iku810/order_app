import '../store.dart';

abstract class StoreRepository {
  Future<List<Store>> getStores({String? status, int? page});

  Future<Store> getStore(String storeId, {String? withTables});
}
