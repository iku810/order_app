import 'table.dart';
import 'table_exceptions.dart';

sealed class TableUse {
  TableUse._({required this.tables, required this.id});

  factory TableUse.from({
    required List<Table> tables,
    required String id,
    required TableUseStatus status,
    required int number,
    required DateTime started,
    required String tableChargePerPerson,
    required int serviceChargeRate,
    required String totalPrice,
  }) {
    return switch (status) {
      TableUseStatus.using => TableInUse.from(
          tables: tables,
          id: id,
          number: number,
          started: started,
          tableChargePerPerson: tableChargePerPerson,
          serviceChargeRate: serviceChargeRate,
          totalPrice: totalPrice,
        ),
      TableUseStatus.closed => TableClosed.from(tables: tables, id: id),
    };
  }

  final List<Table> tables;
  final String id;
}

class TableClosed extends TableUse {
  TableClosed._({required super.tables, required super.id}) : super._();

  factory TableClosed.from({required List<Table> tables, required String id}) {
    if (tables.isEmpty) {
      throw NotFoundTableException();
    }
    return TableClosed._(tables: tables, id: id);
  }
}

sealed class TableInUse extends TableUse {
  TableInUse._({required super.tables, required super.id}) : super._();

  factory TableInUse.from({
    required List<Table> tables,
    required String id,
    required int number,
    required DateTime started,
    required String tableChargePerPerson,
    required int serviceChargeRate,
    required String totalPrice,
  }) {
    if (tables.length <= 1) {
      return SingleTableUse._from(
        tables: tables,
        id: id,
        number: number,
        started: started,
        tableChargePerPerson: tableChargePerPerson,
        serviceChargeRate: serviceChargeRate,
        totalPrice: totalPrice,
      );
    } else {
      return MergedTableUse._from(
        tables: tables,
        id: id,
        number: number,
        started: started,
        tableChargePerPerson: tableChargePerPerson,
        serviceChargeRate: serviceChargeRate,
        totalPrice: totalPrice,
      );
    }
  }

  abstract final int number;
  abstract final DateTime started;
  abstract final String tableChargePerPerson;
  abstract final int serviceChargeRate;
  abstract final String totalPrice;
}

class SingleTableUse extends TableInUse {
  SingleTableUse._({
    required super.tables,
    required super.id,
    required this.number,
    required this.started,
    required this.tableChargePerPerson,
    required this.serviceChargeRate,
    required this.totalPrice,
  }) : super._();

  factory SingleTableUse._from({
    required List<Table> tables,
    required String id,
    required int number,
    required DateTime started,
    required String tableChargePerPerson,
    required int serviceChargeRate,
    required String totalPrice,
  }) {
    if (tables.isEmpty) {
      throw NotFoundTableException();
    }
    if (tables.length > 1) {
      throw NotSingleTableException();
    }
    return SingleTableUse._(
      tables: tables,
      id: id,
      number: number,
      started: started,
      tableChargePerPerson: tableChargePerPerson,
      serviceChargeRate: serviceChargeRate,
      totalPrice: totalPrice,
    );
  }

  @override
  final int number;
  @override
  final int serviceChargeRate;
  @override
  final DateTime started;
  @override
  final String tableChargePerPerson;
  @override
  final String totalPrice;
}

class MergedTableUse extends TableInUse {
  MergedTableUse._({
    required super.tables,
    required super.id,
    required this.number,
    required this.started,
    required this.tableChargePerPerson,
    required this.serviceChargeRate,
    required this.totalPrice,
  }) : super._();

  factory MergedTableUse._from({
    required List<Table> tables,
    required String id,
    required int number,
    required DateTime started,
    required String tableChargePerPerson,
    required int serviceChargeRate,
    required String totalPrice,
  }) {
    if (tables.isEmpty) {
      throw NotFoundTableException();
    }
    if (tables.length <= 1) {
      throw NotMultipleTablesException();
    }

    final seenTableIds = <String>{};
    for (final table in tables) {
      if (!seenTableIds.add(table.id)) {
        throw DuplicateTableException(tableId: table.id);
      }
    }

    return MergedTableUse._(
      tables: tables,
      id: id,
      number: number,
      started: started,
      tableChargePerPerson: tableChargePerPerson,
      serviceChargeRate: serviceChargeRate,
      totalPrice: totalPrice,
    );
  }

  @override
  final int number;
  @override
  final int serviceChargeRate;
  @override
  final DateTime started;
  @override
  final String tableChargePerPerson;
  @override
  final String totalPrice;

  Table get representativeTable => tables.first;
}

enum TableUseStatus {
  using,
  closed,
}

class TableUseList {
  TableUseList({required this.values});
  final List<TableUse> values;

  Iterable<TableInUse> get inUse {
    final tableInUseList = values.whereType<TableInUse>();

    final seenTableIds = <String>{};
    for (final table in tableInUseList.expand((use) => use.tables)) {
      if (!seenTableIds.add(table.id)) {
        throw DuplicateTableException(tableId: table.id);
      }
    }

    return tableInUseList;
  }
}
