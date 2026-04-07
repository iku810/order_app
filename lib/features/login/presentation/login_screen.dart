import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../shared/auth/domain/auth_state.dart';
import 'auth_state_notifier.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);

    if (authState is UnAuthenticated) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(authStateProvider.notifier).login();
      });
    }

    return Scaffold(
      body: Center(
        child: switch (authState) {
          UnAuthenticated() => const Text('ログインします。'),
          Authenticating() => const CircularProgressIndicator(),
          Authenticated() => const Text('ログインできました。'),
          AuthError() =>
            Text('ログインできませんでした。 \nエラーメッセージ: ${authState.exception.message}'),
        },
      ),
    );
  }
}
