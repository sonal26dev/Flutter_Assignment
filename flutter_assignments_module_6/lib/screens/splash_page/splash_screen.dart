import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignments_module_6/screens/home_page/home_screen.dart';
import 'package:flutter_assignments_module_6/screens/login_page/login_screen.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});
  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    super.initState();
    navigator();
  }
  navigator() {
    Timer(Duration(seconds: 20), () {
      FirebaseAuth.instance.authStateChanges().listen((User? user) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  user == null ? login_screen() : homescreen() ,
            ));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
                image: AssetImage('assets/images/chat.png'),
                color: Colors.deepPurple,
                width: 125),
            SizedBox(
              height: 20,
            ),
            Text(
              'Chatter',
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  fontStyle: FontStyle.italic),
            )
          ],
        ),
      ),
    );
  }
}
