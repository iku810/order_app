import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../application/check_in_usecase.dart';
import 'check_in_repository_provider.dart';

part 'check_in_usecase_provider.g.dart';

@riverpod
CheckInUsecase checkInUsecase(Ref ref) {
  return CheckInUsecase(ref.watch(checkInRepositoryProvider));
}
