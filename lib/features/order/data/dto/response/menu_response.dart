import 'package:json_annotation/json_annotation.dart';

part 'menu_response.g.dart';

@JsonSerializable()
class MenuResponse {
  const MenuResponse({
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

  factory MenuResponse.fromJson(Map<String, dynamic> json) =>
      _$MenuResponseFromJson(json);

  final String id;
  final String name;
  final String kana;
  final String type;
  final String categoryId;
  final String? note;
  final int sortNo;
  final String? applyDatetime;
  final int timeLimit;
  final int preTimeLimitMinutesLeft;
  final String? customId;
  final bool isOpenPrice;
  final String createdIn;
  final String? toppingGroupId;
  final List<PriceResponse> prices;

  Map<String, dynamic> toJson() => _$MenuResponseToJson(this);
}

@JsonSerializable()
class PriceResponse {
  const PriceResponse({
    required this.taxRate,
    required this.taxType,
    required this.amount,
    required this.tax,
    required this.primary,
  });

  factory PriceResponse.fromJson(Map<String, dynamic> json) =>
      _$PriceResponseFromJson(json);

  final int taxRate;
  final String taxType;
  final String amount;
  final String tax;
  final bool primary;

  Map<String, dynamic> toJson() => _$PriceResponseToJson(this);
}
