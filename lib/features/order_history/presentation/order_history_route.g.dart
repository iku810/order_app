// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_history_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $orderHistoryRoute,
    ];

RouteBase get $orderHistoryRoute => GoRouteData.$route(
      path: '/order_history/:storeId/:tableUseId',
      factory: $OrderHistoryRoute._fromState,
    );

mixin $OrderHistoryRoute on GoRouteData {
  static OrderHistoryRoute _fromState(GoRouterState state) => OrderHistoryRoute(
        storeId: state.pathParameters['storeId']!,
        tableUseId: state.pathParameters['tableUseId']!,
      );

  OrderHistoryRoute get _self => this as OrderHistoryRoute;

  @override
  String get location => GoRouteData.$location(
        '/order_history/${Uri.encodeComponent(_self.storeId)}/${Uri.encodeComponent(_self.tableUseId)}',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
