import 'menu.dart';

class OrderItem {
  const OrderItem({
    required this.menuId,
    required this.quantity,
    required this.menuType,
    required this.name,
    required this.sellingPrice,
    this.discount,
  });

  final String menuId;
  final int quantity;
  final String menuType;
  final String name;
  final SellingPrice sellingPrice;
  final Discount? discount;
}

class SellingPrice {
  const SellingPrice({
    required this.amount,
    required this.tax,
    required this.taxRate,
    required this.taxType,
  });

  final int amount;
  final Tax tax;
  final int taxRate;
  final TaxType taxType;
}

class Discount {
  const Discount({required this.rate});

  final String rate;
}
