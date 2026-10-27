import 'package:json_annotation/json_annotation.dart';

import '../../../domain/table.dart';
import '../../../domain/table_use.dart';
import 'table_use_list_item_response.dart';

part 'table_use_detail_response.g.dart';

@JsonSerializable()
class TableUseDetailResponse {
  const TableUseDetailResponse({
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
    required this.orders,
    this.ended,
    this.tempTransactionHeadId,
    this.reservationId,
  });

  factory TableUseDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$TableUseDetailResponseFromJson(json);

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
  final List<OrderInTableUseResponse> orders;

  Map<String, dynamic> toJson() => _$TableUseDetailResponseToJson(this);
}

@JsonSerializable()
class OrderInTableUseResponse {
  const OrderInTableUseResponse({
    required this.orderId,
    required this.ordered,
    required this.items,
    required this.tableUseId,
  });

  factory OrderInTableUseResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderInTableUseResponseFromJson(json);

  final String orderId;
  final String ordered;
  final List<OrderItemInTableUseResponse> items;
  final String tableUseId;

  Map<String, dynamic> toJson() => _$OrderInTableUseResponseToJson(this);
}

@JsonSerializable()
class OrderItemInTableUseResponse {
  const OrderItemInTableUseResponse({
    required this.id,
    required this.name,
    required this.status,
    required this.menuId,
    required this.quantity,
    required this.menuType,
    this.servedAt,
    this.memo,
    this.sellingPrice,
  });

  factory OrderItemInTableUseResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderItemInTableUseResponseFromJson(json);

  final String id;
  final String name;
  final String status;
  final String? servedAt;
  final String? memo;
  final String menuId;
  final int quantity;
  final String menuType;
  final SellingPriceInOrderResponse? sellingPrice;

  Map<String, dynamic> toJson() => _$OrderItemInTableUseResponseToJson(this);
}

@JsonSerializable()
class SellingPriceInOrderResponse {
  const SellingPriceInOrderResponse({
    required this.taxRate,
    required this.taxType,
    required this.amount,
    required this.tax,
  });

  factory SellingPriceInOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$SellingPriceInOrderResponseFromJson(json);

  final int taxRate;
  final String taxType;
  final String amount;
  final String tax;

  Map<String, dynamic> toJson() => _$SellingPriceInOrderResponseToJson(this);
}

extension TableUseDetailResponseMapper on TableUseDetailResponse {
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
