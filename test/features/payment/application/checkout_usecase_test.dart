import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:order_app/features/payment/application/checkout_usecase.dart';

import '../../../mocks.mocks.dart';

void main() {
  late MockPaymentRepository mockRepository;
  late CheckoutUsecase usecase;

  setUp(() {
    mockRepository = MockPaymentRepository();
    usecase = CheckoutUsecase(mockRepository);
  });

  test('tableUseIdを渡してcheckoutが呼ばれる', () async {
    when(mockRepository.checkout('use1')).thenAnswer((_) async {});

    await usecase.execute('use1');

    verify(mockRepository.checkout('use1')).called(1);
  });
}
