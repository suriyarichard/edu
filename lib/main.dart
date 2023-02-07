import 'package:edu/screens/home.dart';
import 'package:edu/screens/mainPage.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('az');
    return MaterialApp(
      title: 'Edu',
      home: mainPage(),
      debugShowCheckedModeBanner: true,
    );
  }
}
