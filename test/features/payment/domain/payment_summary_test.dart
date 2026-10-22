import 'package:flutter_test/flutter_test.dart';
import 'package:order_app/features/payment/domain/payment_summary.dart';

void main() {
  const item = PaymentItem(
    name: 'ラーメン',
    quantity: 2,
    unitPrice: 800,
    tax: PaymentTax.include,
    taxRate: 10,
    taxType: PaymentTaxType.normal,
  );

  group('PaymentItem.lineTotal', () {
    test('unitPrice × quantity が返る', () {
      expect(item.lineTotal, 1600);
    });
  });

  group('PaymentSummary', () {
    test('itemsが空の場合はExceptionが発生する', () {
      expect(
        () => PaymentSummary(
          tableUseId: 'use1',
          items: [],
          tableChargePerPerson: 0,
          number: 2,
          serviceChargeRate: 0,
        ),
        throwsException,
      );
    });

    test('itemsがある場合は正常に生成される', () {
      final summary = PaymentSummary(
        tableUseId: 'use1',
        items: [item],
        tableChargePerPerson: 500,
        number: 2,
        serviceChargeRate: 10,
      );
      expect(summary.tableUseId, 'use1');
      expect(summary.items.length, 1);
    });
  });
}
