import '../../../../infrastructure/network/api_client.dart';
import '../../../../shared/auth/domain/contract_id.dart';
import '../../domain/repository/store_repository.dart';
import '../../domain/store.dart';
import '../dto/request/status.dart';
import '../dto/response/store_response.dart';

class StoreRepositoryImpl implements StoreRepository {
  StoreRepositoryImpl(this._apiClient, this._contractId);

  final ContractId _contractId;
  final ApiClient _apiClient;

  @override
  Future<StoreList> getStores({String? status, int? page}) async {
    final List<StoreResponse> responses = await _apiClient.getStores(
      contractId: _contractId.value,
      status: status ?? Status.active.value,
      page: page,
    );
    return StoreList(responses.map((r) => r.toStore()).toList());
  }
}
