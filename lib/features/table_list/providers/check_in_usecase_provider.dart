import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../application/check_in_usecase.dart';
import 'table_use_repository_provider.dart';

part 'check_in_usecase_provider.g.dart';

@riverpod
CheckInUsecase checkInUsecase(Ref ref) {
  return CheckInUsecase(ref.watch(tableUseRepositoryProvider));
}
