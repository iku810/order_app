import '../../../../infrastructure/network/api_client.dart';
import '../../../../shared/auth/domain/entity/contract_id.dart';
import '../../domain/repository/table_use_repository.dart';
import '../../domain/table.dart';
import '../../domain/table_use.dart';
import '../dto/request/cancel_order_request.dart';
import '../dto/request/check_in_request.dart';
import '../dto/request/checkout_request.dart';
import '../dto/response/table_use_response.dart';

class TableUseRepositoryImpl implements TableUseRepository {
  TableUseRepositoryImpl(this._apiClient, this._contractId);

  final ApiClient _apiClient;
  final ContractId _contractId;

  @override
  Future<TableUseList> getTableUses({
    String? storeId,
    String? status,
    int? page,
  }) async {
    final responses = await _apiClient.getTableUses(
      contractId: _contractId.value,
      storeId: storeId,
      status: status,
      page: page,
    );
    return TableUseList(values: responses.map(_toTableUseDomain).toList());
  }

  @override
  Future<TableUse> getTableUse(String tableUseId) async {
    final response = await _apiClient.getTableUse(
        contractId: _contractId.value, tableUseId: tableUseId);
    return _toTableUseDomain(response);
  }

  @override
  Future<TableUse> checkIn({
    required String storeId,
    required List<String> tableIds,
    required int number,
    List<String>? customerGroupIds,
    String? staffId,
    String? tableChargePerPerson,
    int? serviceChargeRate,
  }) async {
    final body = CheckInRequest(
      storeId: storeId,
      tables: tableIds.map((id) => TableIdRequest(id: id)).toList(),
      number: number,
      customerGroups: customerGroupIds
          ?.map((id) => CustomerGroupIdRequest(id: id))
          .toList(),
      staffId: staffId,
      tableChargePerPerson: tableChargePerPerson,
      serviceChargeRate: serviceChargeRate,
    );
    final response =
        await _apiClient.checkIn(contractId: _contractId.value, body: body);
    return _toTableUseDomain(response);
  }

  @override
  Future<void> checkout(
    String tableUseId, {
    bool makeTempTransaction = false,
  }) async {
    await _apiClient.checkout(
      contractId: _contractId.value,
      tableUseId: tableUseId,
      body: CheckoutRequest(makeTempTransaction: makeTempTransaction),
    );
  }

  @override
  Future<void> cancelTableUse(String tableUseId) async {
    await _apiClient.cancelTableUse(
        contractId: _contractId.value, tableUseId: tableUseId);
  }

  @override
  Future<void> cancelOrder(
    String tableUseId, {
    required List<String> orderItemIds,
    bool kitchenTicket = false,
    bool orderSlip = false,
  }) async {
    final body = CancelOrderRequest(
      orderItems: orderItemIds,
      orderPrints: CancelOrderPrintsRequest(
        kitchenTicket: kitchenTicket,
        orderSlip: orderSlip,
      ),
    );
    await _apiClient.cancelOrder(
        contractId: _contractId.value, tableUseId: tableUseId, body: body);
  }

  TableUseStatus _toTableUseStatus(String status) => switch (status) {
        'started' || 'merged' => TableUseStatus.using,
        'ended' || 'canceled' => TableUseStatus.closed,
        _ => TableUseStatus.closed,
      };

  TableUse _toTableUseDomain(TableUseResponse dto) {
    return TableUse.from(
      id: dto.id,
      tables: dto.tables.map((t) => Table(id: t.id, name: t.name)).toList(),
      status: _toTableUseStatus(dto.status),
      number: dto.number,
      started: DateTime.parse(dto.started),
      tableChargePerPerson: dto.tableChargePerPerson,
      serviceChargeRate: dto.serviceChargeRate,
      totalPrice: dto.totalPrice,
    );
  }
}
