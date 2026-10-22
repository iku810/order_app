import 'package:flutter_test/flutter_test.dart';
import 'package:order_app/shared/table/domain/table.dart';
import 'package:order_app/shared/table/domain/table_exceptions.dart';
import 'package:order_app/shared/table/domain/table_use.dart';

final _started = DateTime.utc(2024, 1, 1);

TableInUse _makeTableInUse(List<Table> tables) => TableInUse.from(
      tables: tables,
      id: 'use1',
      number: 2,
      started: _started,
      tableChargePerPerson: '500',
      serviceChargeRate: 0,
      totalPrice: '1000',
    );

void main() {
  const table1 = Table(id: 't1', name: 'テーブル1');
  const table2 = Table(id: 't2', name: 'テーブル2');

  group('TableClosed.from', () {
    test('テーブルが空の場合はNotFoundTableExceptionが発生する', () {
      expect(
        () => TableClosed.from(tables: [], id: 'use1'),
        throwsA(isA<NotFoundTableException>()),
      );
    });

    test('テーブルがある場合は正常に生成される', () {
      final closed = TableClosed.from(tables: [table1], id: 'use1');
      expect(closed.tables, [table1]);
    });
  });

  group('TableInUse.from → SingleTableUse', () {
    test('テーブルが空の場合はNotFoundTableExceptionが発生する', () {
      expect(
        () => _makeTableInUse([]),
        throwsA(isA<NotFoundTableException>()),
      );
    });

    test('テーブルが1つの場合はSingleTableUseが返る', () {
      final result = _makeTableInUse([table1]);
      expect(result, isA<SingleTableUse>());
      expect(result.tables, [table1]);
      expect(result.number, 2);
    });
  });

  group('TableInUse.from → MergedTableUse', () {
    test('テーブルが2つ以上の場合はMergedTableUseが返る', () {
      final result = _makeTableInUse([table1, table2]);
      expect(result, isA<MergedTableUse>());
      expect(result.tables.length, 2);
    });

    test('重複テーブルはDuplicateTableExceptionが発生する', () {
      expect(
        () => _makeTableInUse([table1, table1]),
        throwsA(isA<DuplicateTableException>()),
      );
    });
  });

  group('TableUseList.inUse', () {
    test('TableClosedを除いたTableInUseのみ返す', () {
      final tableInUse = _makeTableInUse([table1]);
      final tableClosed = TableClosed.from(tables: [table2], id: 'use2');
      final list = TableUseList(values: [tableInUse, tableClosed]);
      expect(list.inUse.toList(), [tableInUse]);
    });

    test('複数のTableInUseに同じテーブルが含まれる場合はDuplicateTableExceptionが発生する', () {
      final use1 = _makeTableInUse([table1]);
      final use2 = TableInUse.from(
        tables: [table1],
        id: 'use2',
        number: 1,
        started: _started,
        tableChargePerPerson: '500',
        serviceChargeRate: 0,
        totalPrice: '500',
      );
      final list = TableUseList(values: [use1, use2]);
      expect(
        () => list.inUse.toList(),
        throwsA(isA<DuplicateTableException>()),
      );
    });
  });
}
