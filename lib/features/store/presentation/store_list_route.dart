import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'store_list_screen.dart';

part 'store_list_route.g.dart';

@TypedGoRoute<StoreListRoute>(
  path: '/store_list',
)
class StoreListRoute extends GoRouteData with $StoreListRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const StoreListScreen();
  }
}
