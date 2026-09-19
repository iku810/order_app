import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../network/api_dio.dart';
import 'secure_storage_provider.dart';

part 'api_dio_provider.g.dart';

@riverpod
ApiDio apiDio(Ref ref) {
  return ApiDio(ref.watch(secureStorageProvider));
}
