class TableUse {
  const TableUse({
    required this.id,
    required this.storeId,
    required this.tables,
    required this.number,
    required this.status,
    required this.started,
    required this.customerGroups,
    required this.quantity,
    required this.tableChargePerPerson,
    required this.serviceChargeRate,
    required this.totalPrice,
    required this.uuid,
    this.ended,
    this.tempTransactionHeadId,
    this.reservationId,
    this.orders,
  });

  final String id;
  final String storeId;
  final List<Table> tables;
  final int number;
  final String status;
  final DateTime started;
  final DateTime? ended;
  final List<CustomerGroup> customerGroups;
  final int quantity;
  final String tableChargePerPerson;
  final int serviceChargeRate;
  final String totalPrice;
  final String? tempTransactionHeadId;
  final String? reservationId;
  final String uuid;
  final List<TableUseOrder>? orders;
}

class TableUseOrder {
  const TableUseOrder({
    required this.orderId,
    required this.ordered,
    required this.items,
    required this.tableUseId,
  });

  final String orderId;
  final DateTime ordered;
  final List<TableUseOrderItem> items;
  final String tableUseId;
}

class TableUseOrderItem {
  const TableUseOrderItem({
    required this.id,
    required this.name,
    required this.status,
    required this.menuId,
    required this.quantity,
    required this.menuType,
    this.servedAt,
    this.memo,
  });

  final String id;
  final String name;
  final String status;
  final DateTime? servedAt;
  final String? memo;
  final String menuId;
  final int quantity;
  final String menuType;
}

class Table {
  const Table({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;
}

class CustomerGroup {
  const CustomerGroup({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;
}
