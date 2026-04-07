import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../application/cancel_order_usecase.dart';
import 'order_history_repository_provider.dart';

part 'cancel_order_usecase_provider.g.dart';

@riverpod
CancelOrderUsecase cancelOrderUsecase(Ref ref) {
  return CancelOrderUsecase(ref.watch(orderHistoryRepositoryProvider));
}
