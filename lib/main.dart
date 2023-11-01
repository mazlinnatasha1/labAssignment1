import 'package:flutter/material.dart';
import 'views/screens/splashscreen.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator.net',
      theme: ThemeData(
        primarySwatch: Colors.pink,

        ),
        home: const SplashScreen(),
      );
  }
}