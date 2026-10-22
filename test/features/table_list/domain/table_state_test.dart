import 'package:flutter_test/flutter_test.dart';
import 'package:order_app/features/table_list/domain/table_state.dart';
import 'package:order_app/shared/table/domain/table.dart';
import 'package:order_app/shared/table/domain/table_use.dart';

void main() {
  const table = Table(id: 't1', name: 'テーブル1', sortNo: 1);
  final started = DateTime.utc(2024, 1, 1);

  TableInUse makeSingleUse() => TableInUse.from(
        tables: [table],
        id: 'use1',
        number: 2,
        started: started,
        tableChargePerPerson: '500',
        serviceChargeRate: 0,
        totalPrice: '1000',
      );

  TableInUse makeMergedUse() => TableInUse.from(
        tables: [table, const Table(id: 't2', name: 'テーブル2')],
        id: 'use1',
        number: 2,
        started: started,
        tableChargePerPerson: '500',
        serviceChargeRate: 0,
        totalPrice: '1000',
      );

  group('TableState.from', () {
    test('tableUseがnullの場合はUncheckedInTableが返る', () {
      final state = TableState.from(table, null);
      expect(state, isA<UncheckedInTable>());
    });

    test('SingleTableUseの場合はSingleTableが返る', () {
      final state = TableState.from(table, makeSingleUse());
      expect(state, isA<SingleTable>());
    });

    test('MergedTableUseの場合はMergedTableが返る', () {
      final state = TableState.from(table, makeMergedUse());
      expect(state, isA<MergedTable>());
    });

    test('テーブルのname/idが正しく取得できる', () {
      final state = TableState.from(table, null);
      expect(state.name, 'テーブル1');
      expect(state.id, 't1');
    });
  });
}
