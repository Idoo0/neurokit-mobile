import 'package:flutter/material.dart';

class WarmUpPage extends StatelessWidget {
  const WarmUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Warm Up')),
      body: const Center(child: Text('Warm Up Page')),
    );
  }
}
