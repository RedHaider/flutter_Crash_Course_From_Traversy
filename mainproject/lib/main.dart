import 'package:crashcourse2/Screen/tipCalculator.dart';
import 'package:flutter/material.dart';
import 'package:crashcourse2/Screen/home.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Assignment",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const TipCalculator()
    );
  }
}