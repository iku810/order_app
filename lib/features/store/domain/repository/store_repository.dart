import '../store.dart';

abstract class StoreRepository {
  Future<StoreList> getStores({String? status, int? page});

  Future<StoreDetail> getStore(String storeId, {String? withTables});
}
