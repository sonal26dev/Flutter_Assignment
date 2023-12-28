// Question_25 :Write a code to display Splash Screen using Activity

import 'dart:async';

import 'package:flutter/material.dart';

import 'homeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(backgroundColor: Colors.white),
     debugShowCheckedModeBanner: false,
      home: const SplashScreen()
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
    });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('assets/images/flutter.png'),
    );
  }
}
