import 'package:json_annotation/json_annotation.dart';

import '../../../domain/store.dart';

part 'store_response.g.dart';

@JsonSerializable()
class StoreResponse {
  const StoreResponse({
    required this.id,
    required this.name,
    required this.startOfDay,
    required this.tablesCount,
    required this.created,
    required this.posStoreId,
    this.suspend,
    this.tables,
  });

  factory StoreResponse.fromJson(Map<String, dynamic> json) =>
      _$StoreResponseFromJson(json);

  final String id;
  final String name;
  final String startOfDay;
  final int tablesCount;
  final String? suspend;
  final String created;
  final String posStoreId;
  final List<StoreTableResponse>? tables;

  Map<String, dynamic> toJson() => _$StoreResponseToJson(this);
}

extension StoreResponseMapper on StoreResponse {
  Store toStore() => Store(id: id, name: name);

  StoreDetail toStoreDetail() => StoreDetail(
        id: id,
        name: name,
        tables: tables?.map((t) => t.toTable()).toList(),
      );
}

@JsonSerializable()
class StoreTableResponse {
  const StoreTableResponse({
    required this.id,
    required this.name,
    this.category,
    this.sortNo,
  });

  factory StoreTableResponse.fromJson(Map<String, dynamic> json) =>
      _$StoreTableResponseFromJson(json);

  final String id;
  final String name;
  final String? category;
  final int? sortNo;

  Map<String, dynamic> toJson() => _$StoreTableResponseToJson(this);
}

extension StoreTableResponseMapper on StoreTableResponse {
  Table toTable() => Table(id: id, name: name, category: category, sortNo: sortNo);
}
