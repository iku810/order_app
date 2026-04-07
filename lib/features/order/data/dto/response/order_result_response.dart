import 'package:json_annotation/json_annotation.dart';

part 'order_result_response.g.dart';

@JsonSerializable()
class OrderResultResponse {
  const OrderResultResponse({
    required this.orderId,
    required this.ordered,
    required this.items,
    required this.tableUseId,
  });

  factory OrderResultResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderResultResponseFromJson(json);

  final String orderId;
  final String ordered;
  final List<OrderResultItemResponse> items;
  final String tableUseId;

  Map<String, dynamic> toJson() => _$OrderResultResponseToJson(this);
}

@JsonSerializable()
class OrderResultItemResponse {
  const OrderResultItemResponse({
    required this.id,
    required this.name,
    required this.status,
    required this.menuId,
    required this.quantity,
    required this.menuType,
    this.servedAt,
    this.memo,
  });

  factory OrderResultItemResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderResultItemResponseFromJson(json);

  final String id;
  final String name;
  final String status;
  final String? servedAt;
  final String? memo;
  final String menuId;
  final int quantity;
  final String menuType;

  Map<String, dynamic> toJson() => _$OrderResultItemResponseToJson(this);
}
