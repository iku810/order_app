import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:order_app/features/table_list/application/fetch_table_state_list_usecase.dart';
import 'package:order_app/features/table_list/domain/table_state.dart';
import 'package:order_app/shared/table/domain/table.dart';
import 'package:order_app/shared/table/domain/table_use.dart';

import '../../../mocks.mocks.dart';

void main() {
  late MockTableRepository mockTableRepository;
  late MockTableUseRepository mockTableUseRepository;
  late FetchTableStateListUsecase usecase;

  const storeId = 'store1';
  final started = DateTime.utc(2024, 1, 1);

  setUp(() {
    mockTableRepository = MockTableRepository();
    mockTableUseRepository = MockTableUseRepository();
    usecase = FetchTableStateListUsecase(
      mockTableRepository,
      mockTableUseRepository,
    );
  });

  TableInUse makeInUse(List<Table> tables, String id) => TableInUse.from(
        tables: tables,
        id: id,
        number: 2,
        started: started,
        tableChargePerPerson: '500',
        serviceChargeRate: 0,
        totalPrice: '1000',
      );

  test('テーブルの利用なし → 全てUncheckedInTable', () async {
    const tables = [
      Table(id: 't1', name: 'テーブル1'),
      Table(id: 't2', name: 'テーブル2'),
    ];
    when(mockTableRepository.getTables(storeId))
        .thenAnswer((_) async => tables);
    when(mockTableUseRepository.getTableUses(storeId: storeId))
        .thenAnswer((_) async => TableUseList(values: []));

    final result = await usecase.execute(storeId);

    expect(result.length, 2);
    expect(result.every((s) => s is UncheckedInTable), true);
  });

  test('利用中テーブルがある → CheckedInTableが返る', () async {
    const table1 = Table(id: 't1', name: 'テーブル1');
    const table2 = Table(id: 't2', name: 'テーブル2');
    final tableInUse = makeInUse([table1], 'use1');

    when(mockTableRepository.getTables(storeId))
        .thenAnswer((_) async => [table1, table2]);
    when(mockTableUseRepository.getTableUses(storeId: storeId))
        .thenAnswer((_) async => TableUseList(values: [tableInUse]));

    final result = await usecase.execute(storeId);

    final t1State = result.firstWhere((s) => s.id == 't1');
    final t2State = result.firstWhere((s) => s.id == 't2');
    expect(t1State, isA<SingleTable>());
    expect(t2State, isA<UncheckedInTable>());
  });

  test('合席テーブル → 両テーブルがMergedTable', () async {
    const table1 = Table(id: 't1', name: 'テーブル1');
    const table2 = Table(id: 't2', name: 'テーブル2');
    final mergedUse = makeInUse([table1, table2], 'use1');

    when(mockTableRepository.getTables(storeId))
        .thenAnswer((_) async => [table1, table2]);
    when(mockTableUseRepository.getTableUses(storeId: storeId))
        .thenAnswer((_) async => TableUseList(values: [mergedUse]));

    final result = await usecase.execute(storeId);

    expect(result.every((s) => s is MergedTable), true);
  });
}
