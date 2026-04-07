import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/order_history.dart';
import '../providers/cancel_order_usecase_provider.dart';
import '../providers/fetch_order_histories_usecase_provider.dart';

part 'order_history_notifier.g.dart';

@riverpod
class OrderHistoryNotifier extends _$OrderHistoryNotifier {
  @override
  Future<List<OrderHistory>> build(String tableUseId) async {
    return ref.read(fetchOrderHistoriesUsecaseProvider).execute(tableUseId);
  }

  Future<void> cancelOrder(List<String> orderItemIds) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await ref
          .read(cancelOrderUsecaseProvider)
          .execute(tableUseId, orderItemIds: orderItemIds);
      return ref
          .read(fetchOrderHistoriesUsecaseProvider)
          .execute(tableUseId);
    });
  }
}
