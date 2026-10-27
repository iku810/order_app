import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../application/create_order_usecase.dart';
import 'order_repository_provider.dart';

part 'create_order_usecase_provider.g.dart';

@riverpod
CreateOrderUsecase createOrderUsecase(Ref ref) {
  return CreateOrderUsecase(ref.watch(orderRepositoryProvider));
}
