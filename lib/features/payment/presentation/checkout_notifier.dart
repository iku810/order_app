import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../providers/checkout_usecase_provider.dart';

part 'checkout_notifier.g.dart';

@riverpod
class CheckoutNotifier extends _$CheckoutNotifier {
  @override
  AsyncValue<void> build(String tableUseId) {
    return const AsyncData(null);
  }

  Future<void> checkout() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await ref.read(checkoutUsecaseProvider).execute(tableUseId);
    });
  }
}
