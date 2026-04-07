import 'package:json_annotation/json_annotation.dart';

part 'check_in_request.g.dart';

@JsonSerializable()
class CheckInRequest {
  const CheckInRequest({
    required this.storeId,
    required this.tables,
    required this.number,
    this.customerGroups,
    this.staffId,
    this.tableChargePerPerson,
    this.serviceChargeRate,
  });

  factory CheckInRequest.fromJson(Map<String, dynamic> json) =>
      _$CheckInRequestFromJson(json);

  final String storeId;
  final List<TableIdRequest> tables;
  final int number;
  final List<CustomerGroupIdRequest>? customerGroups;
  final String? staffId;
  final String? tableChargePerPerson;
  final int? serviceChargeRate;

  Map<String, dynamic> toJson() => _$CheckInRequestToJson(this);
}

@JsonSerializable()
class TableIdRequest {
  const TableIdRequest({required this.id});

  factory TableIdRequest.fromJson(Map<String, dynamic> json) =>
      _$TableIdRequestFromJson(json);

  final String id;

  Map<String, dynamic> toJson() => _$TableIdRequestToJson(this);
}

@JsonSerializable()
class CustomerGroupIdRequest {
  const CustomerGroupIdRequest({required this.id});

  factory CustomerGroupIdRequest.fromJson(Map<String, dynamic> json) =>
      _$CustomerGroupIdRequestFromJson(json);

  final String id;

  Map<String, dynamic> toJson() => _$CustomerGroupIdRequestToJson(this);
}
