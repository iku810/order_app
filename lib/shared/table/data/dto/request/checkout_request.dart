import 'package:json_annotation/json_annotation.dart';

part 'checkout_request.g.dart';

@JsonSerializable()
class CheckoutRequest {
  const CheckoutRequest({required this.makeTempTransaction});

  factory CheckoutRequest.fromJson(Map<String, dynamic> json) =>
      _$CheckoutRequestFromJson(json);

  final bool makeTempTransaction;

  Map<String, dynamic> toJson() => _$CheckoutRequestToJson(this);
}
