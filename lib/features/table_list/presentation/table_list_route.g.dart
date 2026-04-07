// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_list_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $tableListRoute,
    ];

RouteBase get $tableListRoute => GoRouteData.$route(
      path: '/table_list',
      factory: $TableListRoute._fromState,
    );

mixin $TableListRoute on GoRouteData {
  static TableListRoute _fromState(GoRouterState state) => TableListRoute();

  @override
  String get location => GoRouteData.$location(
        '/table_list',
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
