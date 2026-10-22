import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:order_app/features/store/application/fetch_store_list_usecase.dart';
import 'package:order_app/features/store/domain/store.dart';

import '../../../mocks.mocks.dart';

void main() {
  late MockStoreRepository mockRepository;
  late FetchStoreListUsecase usecase;

  setUp(() {
    mockRepository = MockStoreRepository();
    usecase = FetchStoreListUsecase(mockRepository);
  });

  test('getStoresが呼ばれStoreListが返る', () async {
    final storeList = StoreList([const Store(id: 's1', name: '渋谷店')]);
    when(mockRepository.getStores()).thenAnswer((_) async => storeList);

    final result = await usecase.execute();

    expect(result.values.length, 1);
    expect(result.values.first.name, '渋谷店');
    verify(mockRepository.getStores()).called(1);
  });
}
