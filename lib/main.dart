import 'package:drakorku/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drakorku',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: const HomeScreen(),
    );
  }
}