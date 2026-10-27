// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $orderRoute,
    ];

RouteBase get $orderRoute => GoRouteData.$route(
      path: '/order/:storeId/:tableUseId',
      factory: $OrderRoute._fromState,
    );

mixin $OrderRoute on GoRouteData {
  static OrderRoute _fromState(GoRouterState state) => OrderRoute(
        storeId: state.pathParameters['storeId']!,
        tableUseId: state.pathParameters['tableUseId']!,
      );

  OrderRoute get _self => this as OrderRoute;

  @override
  String get location => GoRouteData.$location(
        '/order/${Uri.encodeComponent(_self.storeId)}/${Uri.encodeComponent(_self.tableUseId)}',
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
