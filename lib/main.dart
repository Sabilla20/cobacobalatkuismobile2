import 'package:flutter/material.dart';
import 'package:pokemon/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokemon App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber.shade800),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.amber.shade800,
          centerTitle: true,
        ),
      ),
      home: LoginPage(),
    );
  }
}
