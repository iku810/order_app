import '../store.dart';

abstract class StoreRepository {
  Future<StoreList> getStores({String? status, int? page});
}
