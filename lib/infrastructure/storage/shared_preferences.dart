import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesStorage {
  final _prefs = SharedPreferences.getInstance();

  // トークンの有効時間
  Future<int?> getTokenExpiredIn() async {
    final prefs = await _prefs;
    return prefs.getInt('token_expired_in');
  }

  Future<void> saveTokenExpiredIn(int expiredIn) async {
    final prefs = await _prefs;
    await prefs.setInt('token_expired_in', expiredIn);
  }

  Future<void> deleteTokenExpiredIn() async {
    final prefs = await _prefs;
    await prefs.remove('token_expired_in');
  }

  // 最後にトークンをFetchした時間
  Future<int?> getLastFetchedTokenAt() async {
    final prefs = await _prefs;
    return prefs.getInt('last_fetched_token_at');
  }

  Future<void> saveLastFetchedTokenAt(int at) async {
    final prefs = await _prefs;
    await prefs.setInt('last_fetched_token_at', at);
  }

  Future<void> deleteLastFetchedTokenAt() async {
    final prefs = await _prefs;
    await prefs.remove('last_fetched_token_at');
  }
}
