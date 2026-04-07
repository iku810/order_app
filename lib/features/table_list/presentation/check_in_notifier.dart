import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../providers/check_in_usecase_provider.dart';

part 'check_in_notifier.g.dart';

@riverpod
class CheckInNotifier extends _$CheckInNotifier {
  @override
  AsyncValue<bool> build(String storeId, String tableId) {
    return const AsyncData(false);
  }

  Future<void> checkIn(int number) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await ref.read(checkInUsecaseProvider).execute(
            storeId: storeId,
            tableId: tableId,
            number: number,
          );
      return true;
    });
  }
}
