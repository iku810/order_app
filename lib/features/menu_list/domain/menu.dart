class Menu {
  const Menu({
    required this.id,
    required this.name,
    required this.kana,
    required this.type,
    required this.categoryId,
    required this.sortNo,
    required this.timeLimit,
    required this.preTimeLimitMinutesLeft,
    required this.isOpenPrice,
    required this.createdIn,
    required this.prices,
    this.note,
    this.applyDatetime,
    this.customId,
    this.toppingGroupId,
  });

  final String id;
  final String name;
  final String kana;
  final String type;
  final String categoryId;
  final String? note;
  final int sortNo;
  final DateTime? applyDatetime;
  final int timeLimit;
  final int preTimeLimitMinutesLeft;
  final String? customId;
  final bool isOpenPrice;
  final String createdIn;
  final String? toppingGroupId;
  final List<Price> prices;
}

class MenuList {
  const MenuList(this.values);
  final List<Menu> values;
}

class Price {
  const Price({
    required this.taxRate,
    required this.taxType,
    required this.amount,
    required this.tax,
    required this.primary,
  });

  final int taxRate;
  final String taxType;
  final String amount;
  final String tax;
  final bool primary;
}
