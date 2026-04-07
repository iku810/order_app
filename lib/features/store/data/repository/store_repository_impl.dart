import '../../../../infrastructure/network/api_client.dart';
import '../../../../shared/auth/domain/entity/contract_id.dart';
import '../../domain/repository/store_repository.dart';
import '../../domain/store.dart';
import '../dto/response/request/status.dart';
import '../dto/response/store_response.dart';

class StoreRepositoryImpl implements StoreRepository {
  StoreRepositoryImpl(this._apiClient, this._contractId);

  final ContractId _contractId;
  final ApiClient _apiClient;

  @override
  Future<StoreList> getStores({String? status, int? page}) async {
    final responses = await _apiClient.getStores(
      contractId: _contractId.value,
      status: status ?? Status.active.value,
      page: page,
    );
    return StoreList(responses.map((r) => r.toStore()).toList());
  }

  @override
  Future<StoreDetail> getStore(String storeId, {String? withTables}) async {
    final response = await _apiClient.getStore(
      contractId: _contractId.value,
      storeId: storeId,
      withTables: withTables,
    );
    return response.toStoreDetail();
  }
}
