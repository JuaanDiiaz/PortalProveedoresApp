import 'package:flutter/material.dart';

class ComplementScreen extends StatelessWidget {
  const ComplementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Complementos'),
      ),
      body: const Center(
        child: Text('Complementos'),
      )
    );
  }
}