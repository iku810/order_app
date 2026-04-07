import '../features/login/presentation/login_route.dart' as login;
import '../features/table_list/presentation/table_list_route.dart' as table_list;

final appRoutes = [
  ...login.$appRoutes,
  ...table_list.$appRoutes,
];