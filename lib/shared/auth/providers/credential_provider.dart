import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/entity/credentials.dart';

part 'credential_provider.g.dart';

@riverpod
Credentials credentials(Ref ref) {
  const clientId = String.fromEnvironment('CLIENT_ID');
  const clientSecret = String.fromEnvironment('CLIENT_SECRET');
  return Credentials.from(
    clientId: clientId,
    clientSecret: clientSecret,
  );
}
