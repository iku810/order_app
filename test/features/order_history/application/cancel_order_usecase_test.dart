import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:order_app/features/order_history/application/cancel_order_usecase.dart';

import '../../../mocks.mocks.dart';

void main() {
  late MockOrderHistoryRepository mockRepository;
  late CancelOrderUsecase usecase;

  setUp(() {
    mockRepository = MockOrderHistoryRepository();
    usecase = CancelOrderUsecase(mockRepository);
  });

  test('tableUseIdとorderItemIdsを渡してcancelOrderが呼ばれる', () async {
    when(
      mockRepository.cancelOrder(
        any,
        orderItemIds: anyNamed('orderItemIds'),
      ),
    ).thenAnswer((_) async {});

    await usecase.execute('use1', orderItemIds: ['item1', 'item2']);

    verify(
      mockRepository.cancelOrder(
        'use1',
        orderItemIds: ['item1', 'item2'],
      ),
    ).called(1);
  });
}
