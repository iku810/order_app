import '../features/check_in/presentation/check_in_route.dart' as check_in;
import '../features/login/presentation/login_route.dart' as login;
import '../features/order/presentation/order_route.dart' as order;
import '../features/order_history/presentation/order_history_route.dart'
    as order_history;
import '../features/payment/presentation/payment_route.dart' as payment;
import '../features/store/presentation/store_list_route.dart' as store_list;
import '../features/table_list/presentation/table_list_route.dart'
    as table_list;

final appRoutes = [
  ...login.$appRoutes,
  ...table_list.$appRoutes,
  ...store_list.$appRoutes,
  ...check_in.$appRoutes,
  ...order_history.$appRoutes,
  ...order.$appRoutes,
  ...payment.$appRoutes,
];
