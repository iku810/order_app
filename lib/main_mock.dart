import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'mock/mock_providers.dart';
import 'router/router_provider.dart';

void main() {
  runApp(
    ProviderScope(
      overrides: mockProviderOverrides,
      child: const MyMockApp(),
    ),
  );
}

class MyMockApp extends ConsumerWidget {
  const MyMockApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      title: '[Mock] Order App',
      routerConfig: router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
