// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_list_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $storeListRoute,
    ];

RouteBase get $storeListRoute => GoRouteData.$route(
      path: '/store_list',
      factory: $StoreListRoute._fromState,
    );

mixin $StoreListRoute on GoRouteData {
  static StoreListRoute _fromState(GoRouterState state) => StoreListRoute();

  @override
  String get location => GoRouteData.$location(
        '/store_list',
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
