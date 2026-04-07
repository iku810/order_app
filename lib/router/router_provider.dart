import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../features/login/presentation/auth_state_notifier.dart';
import '../features/login/presentation/login_route.dart';
import '../features/store/presentation/store_list_route.dart';
import '../shared/auth/domain/entity/auth_state.dart';
import 'routes.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authStateProvider);

  return GoRouter(
    initialLocation: LoginRoute().location,
    routes: appRoutes,
    redirect: (context, state) {
      final isLoginShown = state.matchedLocation == LoginRoute().location;
      switch (authState) {
        case Authenticated():
          if (isLoginShown) {
            final tableLocationRoute = StoreListRoute().location;
            return tableLocationRoute;
          }
        case UnAuthenticated():
        case Authenticating():
        case AuthError():
          if (!isLoginShown) {
            return LoginRoute().location;
          }
      }
      return null;
    },
  );
});
