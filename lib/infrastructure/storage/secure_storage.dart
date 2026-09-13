import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  final _storage = const FlutterSecureStorage(
    mOptions: MacOsOptions(usesDataProtectionKeychain: false),
  );

  Future<String?> getToken() async {
    return await _storage.read(key: 'access_token');
  }

  Future<void> saveToken(String token) async {
    await _storage.write(key: 'access_token', value: token);
  }

  Future<void> deleteToken() async {
    await _storage.delete(key: 'access_token');
  }
}
