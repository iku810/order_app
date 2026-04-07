import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'order_history_screen.dart';

part 'order_history_route.g.dart';

@TypedGoRoute<OrderHistoryRoute>(
  path: '/order_history/:storeId/:tableUseId',
)
class OrderHistoryRoute extends GoRouteData with $OrderHistoryRoute {
  const OrderHistoryRoute({required this.storeId, required this.tableUseId});

  final String storeId;
  final String tableUseId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return OrderHistoryScreen(storeId: storeId, tableUseId: tableUseId);
  }
}
