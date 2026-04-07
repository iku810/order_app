import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/customer_number.dart';
import '../providers/check_in_usecase_provider.dart';

part 'check_in_notifier.freezed.dart';
part 'check_in_notifier.g.dart';

@freezed
abstract class CheckInState with _$CheckInState {
  const factory CheckInState({
    @Default(CustomerNumber.initial) CustomerNumber customerNumber,
    @Default(AsyncData<bool>(false)) AsyncValue<bool> submission,
  }) = _CheckInState;
}

@riverpod
class CheckInNotifier extends _$CheckInNotifier {
  @override
  CheckInState build(String storeId, String tableId) => const CheckInState();

  void increment() {
    if (state.customerNumber.canIncrement) {
      state = state.copyWith(customerNumber: state.customerNumber.increment());
    }
  }

  void decrement() {
    if (state.customerNumber.canDecrement) {
      state = state.copyWith(customerNumber: state.customerNumber.decrement());
    }
  }

  Future<void> checkIn() async {
    final customerNumber = state.customerNumber;
    state = state.copyWith(submission: const AsyncLoading());
    final result = await AsyncValue.guard(() async {
      await ref.read(checkInUsecaseProvider).execute(
            storeId: storeId,
            tableId: tableId,
            number: customerNumber.value,
          );
      return true;
    });
    state = state.copyWith(submission: result);
  }
}
