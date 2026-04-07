import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screen/payment_screen.dart';

part 'payment_route.g.dart';

@TypedGoRoute<PaymentRoute>(path: '/payment/:storeId/:tableUseId')
class PaymentRoute extends GoRouteData with $PaymentRoute {
  const PaymentRoute({required this.storeId, required this.tableUseId});

  final String storeId;
  final String tableUseId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return PaymentScreen(storeId: storeId, tableUseId: tableUseId);
  }
}
