class Table implements Comparable<Table> {
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

  @override
  int compareTo(Table other) {
    final selfSortNo = sortNo;
    final otherSortNo = other.sortNo;

    if (selfSortNo == null && otherSortNo == null) return 0;
    if (selfSortNo == null) return 1;
    if (otherSortNo == null) return -1;
    return selfSortNo.compareTo(otherSortNo);
  }
}
