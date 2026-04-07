import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'table_list_screen.dart';

part 'table_list_route.g.dart';

@TypedGoRoute<TableListRoute>(
  path: '/table_list/:storeId',
)
class TableListRoute extends GoRouteData with $TableListRoute {
  const TableListRoute({required this.storeId});

  final String storeId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return TableListScreen(storeId: storeId);
  }
}
