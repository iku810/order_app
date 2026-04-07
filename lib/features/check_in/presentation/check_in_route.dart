import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'check_in_screen.dart';

part 'check_in_route.g.dart';

@TypedGoRoute<CheckInRoute>(
  path: '/check_in/:storeId/:tableId',
)
class CheckInRoute extends GoRouteData with $CheckInRoute {
  const CheckInRoute({required this.storeId, required this.tableId});

  final String storeId;
  final String tableId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return CheckInScreen(storeId: storeId, tableId: tableId);
  }
}
