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
