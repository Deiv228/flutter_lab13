import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final monochromeScheme = ColorScheme.fromSeed(
      seedColor: Colors.black,
      brightness: Brightness.light,
    ).copyWith(
      primary: Colors.black,
      onPrimary: Colors.white,
      inversePrimary: Colors.grey.shade300,
    );

    return MaterialApp(
      title: 'Lab 13 - Dio Backend',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: monochromeScheme,
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}