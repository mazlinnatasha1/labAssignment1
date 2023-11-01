import 'dart:async';
import 'package:flutter/material.dart';
import 'package:loancalculator/main.dart';
import 'package:loancalculator/views/screens/loancalcscreen.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State <SplashScreen>createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>{

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/icon.png'),
              fit: BoxFit.cover
              )
          ),
        ),
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 100, 0, 20),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Calculator.net",
              style: TextStyle(
                fontSize:40,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
            CircularProgressIndicator(),
            Text(
              "Version 0.1",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
          ],
         ),
         )
      ],
    ),
  );
}
  void initState(){
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(context,
       MaterialPageRoute(builder: (content) => LoanCalc()))
    );
  }
}
