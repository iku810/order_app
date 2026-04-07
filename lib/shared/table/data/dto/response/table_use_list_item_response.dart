import 'package:json_annotation/json_annotation.dart';

import '../../../domain/table.dart';
import '../../../domain/table_use.dart';

part 'table_use_list_item_response.g.dart';

@JsonSerializable()
class TableUseListItemResponse {
  const TableUseListItemResponse({
    required this.id,
    required this.storeId,
    required this.tables,
    required this.number,
    required this.status,
    required this.started,
    required this.customerGroups,
    required this.quantity,
    required this.tableChargePerPerson,
    required this.serviceChargeRate,
    required this.totalPrice,
    required this.uuid,
    this.ended,
    this.tempTransactionHeadId,
    this.reservationId,
  });

  factory TableUseListItemResponse.fromJson(Map<String, dynamic> json) =>
      _$TableUseListItemResponseFromJson(json);

  final String id;
  final String storeId;
  final List<TableDataResponse> tables;
  final int number;
  final String status;
  final String started;
  final String? ended;
  final List<CustomerGroupResponse> customerGroups;
  final int quantity;
  final String tableChargePerPerson;
  final int serviceChargeRate;
  final String totalPrice;
  final String? tempTransactionHeadId;
  final String? reservationId;
  final String uuid;

  Map<String, dynamic> toJson() => _$TableUseListItemResponseToJson(this);
}

@JsonSerializable()
class TableDataResponse {
  const TableDataResponse({required this.id, required this.name});

  factory TableDataResponse.fromJson(Map<String, dynamic> json) =>
      _$TableDataResponseFromJson(json);

  final String id;
  final String name;

  Map<String, dynamic> toJson() => _$TableDataResponseToJson(this);
}

@JsonSerializable()
class CustomerGroupResponse {
  const CustomerGroupResponse({required this.id, required this.name});

  factory CustomerGroupResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerGroupResponseFromJson(json);

  final String id;
  final String name;

  Map<String, dynamic> toJson() => _$CustomerGroupResponseToJson(this);
}

extension TableUseListItemResponseMapper on TableUseListItemResponse {
  TableUse toDomain() {
    return TableUse.from(
      id: id,
      tables: tables.map((t) => Table(id: t.id, name: t.name)).toList(),
      status: _toTableUseStatus(status),
      number: number,
      started: DateTime.parse(started),
      tableChargePerPerson: tableChargePerPerson,
      serviceChargeRate: serviceChargeRate,
      totalPrice: totalPrice,
    );
  }
}

TableUseStatus _toTableUseStatus(String status) => switch (status) {
      'started' || 'merged' => TableUseStatus.using,
      _ => TableUseStatus.closed,
    };
