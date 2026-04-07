import '../table_use.dart';

abstract class TableUseRepository {
  Future<List<TableUse>> getTableUses({
    String? storeId,
    String? status,
    int? page,
  });

  Future<TableUse> getTableUse(String tableUseId);

  Future<TableUse> checkIn({
    required String storeId,
    required List<String> tableIds,
    required int number,
    List<String>? customerGroupIds,
    String? staffId,
    String? tableChargePerPerson,
    int? serviceChargeRate,
  });

  Future<void> checkout(
    String tableUseId, {
    bool makeTempTransaction = false,
  });

  Future<void> cancelTableUse(String tableUseId);

  Future<void> cancelOrder(
    String tableUseId, {
    required List<String> orderItemIds,
    bool kitchenTicket = false,
    bool orderSlip = false,
  });
}
