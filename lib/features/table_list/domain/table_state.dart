import 'dart:collection';

import '../../../shared/table/domain/table.dart';
import '../../../shared/table/domain/table_use.dart';

sealed class TableState implements Comparable<TableState> {
  TableState._(this._table);

  factory TableState.from(Table table, TableInUse? tableUse) {
    if (tableUse == null) {
      return UncheckedInTable._(table);
    }
    return switch (tableUse) {
      SingleTableUse() => SingleTable._(table, tableUse),
      MergedTableUse() => MergedTable._(table, tableUse),
    };
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
  TableStateList(List<TableState> values)
      : _values = List<TableState>.from(values)..sort();
  final List<TableState> _values;
  UnmodifiableListView<TableState> get values => UnmodifiableListView(_values);
}
