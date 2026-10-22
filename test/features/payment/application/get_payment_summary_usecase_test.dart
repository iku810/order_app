import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:order_app/features/payment/application/get_payment_summary_usecase.dart';
import 'package:order_app/features/payment/domain/payment_summary.dart';

import '../../../mocks.mocks.dart';

void main() {
  late MockPaymentRepository mockRepository;
  late GetPaymentSummaryUsecase usecase;

  setUp(() {
    mockRepository = MockPaymentRepository();
    usecase = GetPaymentSummaryUsecase(mockRepository);
  });

  test('tableUseIdを渡してgetPaymentSummaryが呼ばれ結果が返る', () async {
    final summary = PaymentSummary(
      tableUseId: 'use1',
      items: [
        const PaymentItem(
          name: 'ラーメン',
          quantity: 1,
          unitPrice: 800,
          tax: PaymentTax.include,
          taxRate: 10,
          taxType: PaymentTaxType.normal,
        ),
      ],
      tableChargePerPerson: 0,
      number: 2,
      serviceChargeRate: 0,
    );
    when(mockRepository.getPaymentSummary('use1'))
        .thenAnswer((_) async => summary);

    final result = await usecase.execute('use1');

    expect(result, summary);
    verify(mockRepository.getPaymentSummary('use1')).called(1);
  });
}
