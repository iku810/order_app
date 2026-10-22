import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:order_app/features/order_history/application/fetch_order_histories_usecase.dart';
import 'package:order_app/features/order_history/domain/order_history.dart';

import '../../../mocks.mocks.dart';

void main() {
  late MockOrderHistoryRepository mockRepository;
  late FetchOrderHistoriesUsecase usecase;

  setUp(() {
    mockRepository = MockOrderHistoryRepository();
    usecase = FetchOrderHistoriesUsecase(mockRepository);
  });

  test('tableUseIdを渡してgetOrderHistoriesが呼ばれる', () async {
    final histories = [
      OrderHistory(
        orderId: 'o1',
        ordered: DateTime.utc(2024, 1, 1),
        items: [],
        tableUseId: 'use1',
      ),
    ];
    when(mockRepository.getOrderHistories('use1'))
        .thenAnswer((_) async => histories);

    final result = await usecase.execute('use1');

    expect(result.length, 1);
    expect(result.first.orderId, 'o1');
    verify(mockRepository.getOrderHistories('use1')).called(1);
  });

  test('canceledステータスのアイテムは除外される', () async {
    final histories = [
      OrderHistory(
        orderId: 'o1',
        ordered: DateTime.utc(2024, 1, 1),
        tableUseId: 'use1',
        items: [
          OrderItem(
            id: '1',
            name: 'オムライス',
            status: 'canceled',
            menuId: 'm1',
            quantity: 1,
            menuType: 'normal',
          ),
          OrderItem(
            id: '2',
            name: 'カレー',
            status: 'waiting',
            menuId: 'm2',
            quantity: 1,
            menuType: 'normal',
          ),
        ],
      ),
    ];
    when(mockRepository.getOrderHistories('use1'))
        .thenAnswer((_) async => histories);

    final result = await usecase.execute('use1');

    expect(result.first.items.length, 1);
    expect(result.first.items.first.name, 'カレー');
  });
}
