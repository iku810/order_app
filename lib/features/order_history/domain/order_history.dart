class OrderHistory {
  const OrderHistory({
    required this.orderId,
    required this.ordered,
    required this.items,
    required this.tableUseId,
  });

  final String orderId;
  final DateTime ordered;
  final List<OrderItem> items;
  final String tableUseId;
}

class OrderItem {
  const OrderItem({
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
