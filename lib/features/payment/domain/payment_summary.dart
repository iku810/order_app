enum PaymentTax { include, exclude, none }

enum PaymentTaxType { normal, reduced, none }

class PaymentItem {
  const PaymentItem({
    required this.name,
    required this.quantity,
    required this.unitPrice,
    required this.tax,
    required this.taxRate,
    required this.taxType,
  });

  final String name;
  final int quantity;
  final int unitPrice;
  final PaymentTax tax;
  final int taxRate;
  final PaymentTaxType taxType;

  int get lineTotal => unitPrice * quantity;
}

class PaymentSummary {
  PaymentSummary._({
    required this.tableUseId,
    required this.items,
    required this.tableChargePerPerson,
    required this.number,
    required this.serviceChargeRate,
  });

  factory PaymentSummary({
    required String tableUseId,
    required List<PaymentItem> items,
    required int tableChargePerPerson,
    required int number,
    required int serviceChargeRate,
  }) {
    if (items.isEmpty) {
      throw Exception('PaymentSummary must have at least one item');
    }
    return PaymentSummary._(
      tableUseId: tableUseId,
      items: items,
      tableChargePerPerson: tableChargePerPerson,
      number: number,
      serviceChargeRate: serviceChargeRate,
    );
  }

  final String tableUseId;
  final List<PaymentItem> items;
  final int tableChargePerPerson;
  final int number;
  final int serviceChargeRate;
}
