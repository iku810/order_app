class StoreDetail {
  const StoreDetail({
    required this.id,
    required this.name,
    this.tables,
  });

  final String id;
  final String name;
  final List<Table>? tables;
}

class Table {
  const Table({
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

class Store {
  const Store({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;
}

class StoreList {

  factory StoreList.empty() {
    return const StoreList([]);
  }
  const StoreList(this.values);
  final List<Store> values;
}
