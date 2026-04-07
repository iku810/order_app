import '../features/menu_list/providers/menu_repository_provider.dart';
import '../features/order/providers/order_repository_provider.dart';
import '../features/store/providers/store_repository_provider.dart';
import '../features/table_list/providers/table_use_repository_provider.dart';
import '../shared/auth/providers/auth_repository_provider.dart';
import 'repositories/mock_auth_repository.dart';
import 'repositories/mock_menu_repository.dart';
import 'repositories/mock_order_repository.dart';
import 'repositories/mock_store_repository.dart';
import 'repositories/mock_table_use_repository.dart';

/// 全repositoryをmockに差し替えるRiverpod overrides一覧
final mockProviderOverrides = [
  authRepositoryProvider.overrideWithValue(MockAuthRepository()),
  storeRepositoryProvider.overrideWithValue(MockStoreRepository()),
  menuRepositoryProvider.overrideWithValue(MockMenuRepository()),
  orderRepositoryProvider.overrideWithValue(MockOrderRepository()),
  tableUseRepositoryProvider.overrideWithValue(MockTableUseRepository()),
];
