// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_in_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $checkInRoute,
    ];

RouteBase get $checkInRoute => GoRouteData.$route(
      path: '/check_in/:storeId/:tableId',
      factory: $CheckInRoute._fromState,
    );

mixin $CheckInRoute on GoRouteData {
  static CheckInRoute _fromState(GoRouterState state) => CheckInRoute(
        storeId: state.pathParameters['storeId']!,
        tableId: state.pathParameters['tableId']!,
      );

  CheckInRoute get _self => this as CheckInRoute;

  @override
  String get location => GoRouteData.$location(
        '/check_in/${Uri.encodeComponent(_self.storeId)}/${Uri.encodeComponent(_self.tableId)}',
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
