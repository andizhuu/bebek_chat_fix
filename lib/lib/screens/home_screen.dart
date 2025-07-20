import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bebek Chat'),
      ),
      body: const Center(
        child: Text(
          'Selamat datang di Bebek Chat!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
