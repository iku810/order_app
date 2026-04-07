class Order {
  const Order({
    required this.items,
    required this.orderPrints,
  });

  final List<OrderItem> items;
  final OrderPrints orderPrints;
}

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

  final String amount;
  final String tax;
  final int taxRate;
  final String taxType;
}

class Discount {
  const Discount({required this.rate});

  final String rate;
}

class OrderPrints {
  const OrderPrints({required this.kitchenTicket, required this.orderSlip});

  final bool kitchenTicket;
  final bool orderSlip;
}
