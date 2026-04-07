import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TableListScreen extends ConsumerWidget {
  const TableListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Table List'),
      ),
      body: const Center(
        child: Text('This is the Table List Screen'),
      ),
    );
  }
}
