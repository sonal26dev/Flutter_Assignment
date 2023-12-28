// Question_26 :Write a code to redirect user from one activity to another when button click.

import 'package:flutter/material.dart';
import 'activity_2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: Activity1());
  }
}

class Activity1 extends StatefulWidget {
  const Activity1({super.key});

  @override
  State<Activity1> createState() => _Activity1State();
}

class _Activity1State extends State<Activity1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HOME"),centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Activity 1",
                style: TextStyle(fontSize: 25, color: Colors.black)),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 130,
              height: 50,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)))),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Activity2(),));
                  },
                  child: const Text(
                    "Next",
                    style: TextStyle(fontSize: 20),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
