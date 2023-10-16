import 'package:flutter/material.dart';
import 'package:go_moon/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GoMoon",
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(31, 31, 31, 1.0)),
      home: const HomePage(),
    );
  }
}
