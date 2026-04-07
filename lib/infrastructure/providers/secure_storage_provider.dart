import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../storage/secure_storage.dart';

part 'secure_storage_provider.g.dart';

@riverpod
SecureStorage secureStorage(Ref ref) {
  return SecureStorage();
}
