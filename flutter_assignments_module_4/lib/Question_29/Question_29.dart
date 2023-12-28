// Question_29: Call via urllauncher, Send Sms via urllauncher

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Q_29()
    );
  }
}

class Q_29 extends StatefulWidget {
  const Q_29({super.key});

  @override
  State<Q_29> createState() => _Q_29State();
}

class _Q_29State extends State<Q_29> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Call and Send SMS URL Launcher"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              launch('tel:+91 89765 87632');
            }, child: const Text("Make a Call")),
            ElevatedButton(onPressed: () {
              launch('sms: +91 89765 87632?body=Hi Welcome to Flutter');
            }, child: const Text("Send SMS"))
          ],
        ),
      ),
    );
  }
}
