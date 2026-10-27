import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../providers/create_order_usecase_provider.dart';
import 'cart_notifier.dart';

part 'order_submission_notifier.g.dart';

@riverpod
class OrderSubmissionNotifier extends _$OrderSubmissionNotifier {
  @override
  AsyncValue<void> build(String storeId, String tableUseId) {
    return const AsyncData(null);
  }

  Future<void> submit() async {
    final cart = ref.read(cartProvider(storeId, tableUseId));
    if (cart.items.isEmpty) return;

    final orderItems = cart.toOrderItems();
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      await ref
          .read(createOrderUsecaseProvider)
          .execute(tableUseId, items: orderItems);
      ref.read(cartProvider(storeId, tableUseId).notifier).clear();
    });
  }
}
