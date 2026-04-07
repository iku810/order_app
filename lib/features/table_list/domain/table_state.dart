import 'table.dart';
import 'table_exceptions.dart';
import 'table_use.dart';

sealed class TableState implements Comparable<TableState> {
  TableState._(this._table);

  factory TableState.from(Table table, TableUse? tableUse) {
    if (tableUse == null) {
      return UncheckedInTable._(table);
    }
    switch (tableUse) {
      case SingleTableUse():
        return SingleTable._(table, tableUse);
      case MergedTableUse():
        return MergedTable._(table, tableUse);
      case TableClosed():
        throw AlreadyClosedTableUseException();
    }
  }
  final Table _table;
  String get name => _table.name;
  String get id => _table.id;
  String? get category => _table.category;

  @override
  int compareTo(TableState other) {
    return _table.compareTo(other._table);
  }
}

class UncheckedInTable extends TableState {
  UncheckedInTable._(super.table) : super._();
}

sealed class CheckedInTable<T extends TableInUse> extends TableState {
  CheckedInTable._(super.table, this.tableUse) : super._();
  final T tableUse;
  int get number => tableUse.number;
  DateTime get started => tableUse.started;
  String get totalPrice => tableUse.totalPrice;
}

class SingleTable extends CheckedInTable<SingleTableUse> {
  SingleTable._(super.table, super.tableUse) : super._();
}

class MergedTable extends CheckedInTable<MergedTableUse> {
  MergedTable._(super.table, super.tableUse) : super._();
  Table get representativeTable => tableUse.representativeTable;
}

class TableStateList {
  TableStateList(this._values);
  final List<TableState> _values;
  List<TableState> get values => List<TableState>.from(_values)..sort();
}
