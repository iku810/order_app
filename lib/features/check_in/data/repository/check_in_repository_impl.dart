import '../../../../infrastructure/network/api_client.dart';
import '../../../../shared/auth/domain/contract_id.dart';
import '../../../../shared/table/data/dto/request/check_in_request.dart';
import '../../../../shared/table/data/dto/response/table_use_response.dart';
import '../../../../shared/table/domain/table_use.dart';
import '../../domain/repository/check_in_repository.dart';

class CheckInRepositoryImpl implements CheckInRepository {
  CheckInRepositoryImpl(this._apiClient, this._contractId);

  final ApiClient _apiClient;
  final ContractId _contractId;

  @override
  Future<TableUse> checkIn({
    required String storeId,
    required String tableId,
    required int number,
  }) async {
    final body = CheckInRequest(
      storeId: storeId,
      tables: [TableIdRequest(id: tableId)],
      number: number,
    );
    final response = await _apiClient.checkIn(
      contractId: _contractId.value,
      body: body,
    );
    return response.toDomain();
  }
}
