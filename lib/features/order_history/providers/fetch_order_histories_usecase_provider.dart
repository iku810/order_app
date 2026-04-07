import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../application/fetch_order_histories_usecase.dart';
import 'order_history_repository_provider.dart';

part 'fetch_order_histories_usecase_provider.g.dart';

@riverpod
FetchOrderHistoriesUsecase fetchOrderHistoriesUsecase(Ref ref) {
  return FetchOrderHistoriesUsecase(ref.watch(orderHistoryRepositoryProvider));
}
