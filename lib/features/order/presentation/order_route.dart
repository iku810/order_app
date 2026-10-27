import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screen/order_screen.dart';

part 'order_route.g.dart';

@TypedGoRoute<OrderRoute>(path: '/order/:storeId/:tableUseId')
class OrderRoute extends GoRouteData with $OrderRoute {
  const OrderRoute({required this.storeId, required this.tableUseId});

  final String storeId;
  final String tableUseId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return OrderScreen(storeId: storeId, tableUseId: tableUseId);
  }
}
