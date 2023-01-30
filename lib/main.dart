import 'package:edu/screens/home.dart';
import 'package:edu/screens/mainPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Edu',
      debugShowCheckedModeBanner: false,

      // home: const Homepage(),
      home: const mainPage(),
    );
  }
}
