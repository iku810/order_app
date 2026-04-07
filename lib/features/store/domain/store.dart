class Store {
  const Store({
    required this.id,
    required this.name,
    required this.startOfDay,
    required this.tablesCount,
    required this.createdAt,
    required this.posStoreId,
    this.suspendAt,
    this.tables,
  });

  final String id;
  final String name;
  final String startOfDay;
  final int tablesCount;
  final DateTime? suspendAt;
  final DateTime createdAt;
  final String posStoreId;
  final List<StoreTable>? tables;
}

class StoreList {
  const StoreList(this.values);
  final List<Store> values;
}

class StoreTable {
  const StoreTable({
    required this.id,
    required this.name,
    this.category,
    this.sortNo,
  });

  final String id;
  final String name;
  final String? category;
  final int? sortNo;
}
