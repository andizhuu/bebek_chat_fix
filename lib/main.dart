import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const BebekChatApp());
}

class BebekChatApp extends StatelessWidget {
  const BebekChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bebek Chat',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomeScreen(),
    );
  }
}
