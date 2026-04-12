import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../storage/shared_preferences.dart';

part 'shared_preferences_provider.g.dart';

@riverpod
SharedPreferencesStorage sharedPreferencesStorage(Ref ref) {
  return SharedPreferencesStorage();
}
