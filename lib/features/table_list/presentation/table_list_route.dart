import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'table_list_screen.dart';

part 'table_list_route.g.dart';

@TypedGoRoute<TableListRoute>(
  path: '/table_list',
)
class TableListRoute extends GoRouteData with $TableListRoute {
    @override
  Widget build(BuildContext context, GoRouterState state) {
    return const TableListScreen();
  }
}