// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $paymentRoute,
    ];

RouteBase get $paymentRoute => GoRouteData.$route(
      path: '/payment/:storeId/:tableUseId',
      factory: $PaymentRoute._fromState,
    );

mixin $PaymentRoute on GoRouteData {
  static PaymentRoute _fromState(GoRouterState state) => PaymentRoute(
        storeId: state.pathParameters['storeId']!,
        tableUseId: state.pathParameters['tableUseId']!,
      );

  PaymentRoute get _self => this as PaymentRoute;

  @override
  String get location => GoRouteData.$location(
        '/payment/${Uri.encodeComponent(_self.storeId)}/${Uri.encodeComponent(_self.tableUseId)}',
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
