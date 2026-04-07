import 'package:json_annotation/json_annotation.dart';

import 'order_request.dart';

part 'order_cancel_request.g.dart';

@JsonSerializable()
class OrderCancelRequest {
  const OrderCancelRequest({
    required this.orderItems,
    required this.orderPrints,
  });

  factory OrderCancelRequest.fromJson(Map<String, dynamic> json) =>
      _$OrderCancelRequestFromJson(json);

  final List<String> orderItems;
  final OrderPrintsRequest orderPrints;

  Map<String, dynamic> toJson() => _$OrderCancelRequestToJson(this);
}
