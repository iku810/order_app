import '../features/login/presentation/login_route.dart' as login;
import '../features/store/presentation/store_list_route.dart' as store_list;
import '../features/table_list/presentation/table_list_route.dart'
    as table_list;

final appRoutes = [
  ...login.$appRoutes,
  ...table_list.$appRoutes,
  ...store_list.$appRoutes,
];
