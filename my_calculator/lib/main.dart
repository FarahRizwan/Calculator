import 'package:flutter/material.dart';
import 'package:my_calculator/Flutter/Stack.dart';
//import 'package:my_calculator/Flutter/Calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Stack1());
  }
}
