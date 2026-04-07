import 'package:json_annotation/json_annotation.dart';

part 'cancel_order_request.g.dart';

@JsonSerializable()
class CancelOrderRequest {
  const CancelOrderRequest({
    required this.orderItems,
    required this.orderPrints,
  });

  factory CancelOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$CancelOrderRequestFromJson(json);

  final List<String> orderItems;
  final CancelOrderPrintsRequest orderPrints;

  Map<String, dynamic> toJson() => _$CancelOrderRequestToJson(this);
}

@JsonSerializable()
class CancelOrderPrintsRequest {
  const CancelOrderPrintsRequest({
    required this.kitchenTicket,
    required this.orderSlip,
  });

  factory CancelOrderPrintsRequest.fromJson(Map<String, dynamic> json) =>
      _$CancelOrderPrintsRequestFromJson(json);

  final bool kitchenTicket;
  final bool orderSlip;

  Map<String, dynamic> toJson() => _$CancelOrderPrintsRequestToJson(this);
}
