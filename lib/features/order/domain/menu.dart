class Menu {
  Menu._({
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
    required List<Price> prices,
    this.note,
    this.applyDatetime,
    this.customId,
    this.toppingGroupId,
  }) : _prices = prices;

  factory Menu.create({
    required String id,
    required String name,
    required String kana,
    required String type,
    required String categoryId,
    required int sortNo,
    required int timeLimit,
    required int preTimeLimitMinutesLeft,
    required bool isOpenPrice,
    required String createdIn,
    required List<Price> prices,
    String? note,
    DateTime? applyDatetime,
    String? customId,
    String? toppingGroupId,
  }) {
    return Menu._(
      id: id,
      name: name,
      kana: kana,
      type: type,
      categoryId: categoryId,
      sortNo: sortNo,
      timeLimit: timeLimit,
      preTimeLimitMinutesLeft: preTimeLimitMinutesLeft,
      isOpenPrice: isOpenPrice,
      createdIn: createdIn,
      prices: prices,
      note: note,
      applyDatetime: applyDatetime,
      customId: customId,
      toppingGroupId: toppingGroupId,
    );
  }

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
  final List<Price> _prices;

  Price get primaryPrice {
    return _prices.firstWhere(
      (Price price) => price.primary,
      orElse: () => _prices.first,
    );
  }

  @override
  bool operator ==(Object other) => other is Menu && other.id == id;

  @override
  int get hashCode => id.hashCode;
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
  final TaxType taxType;
  final int amount;
  final Tax tax;
  final bool primary;
}

enum Tax {
  included,
  excluded,
  none,
}

enum TaxType { normal, reduced, none }
