// Question_18 :Write a code to select Date on button's click event

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home:Q_18(),
    );
  }
}
class Q_18 extends StatefulWidget {
  const Q_18({Key? key}) : super(key: key);

  @override
  State<Q_18> createState() => _Q_18State();
}

class _Q_18State extends State<Q_18> {
  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.now();
    selectTimePicker(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1985),
        lastDate: DateTime(2040),
        builder: (context, child) {
          return Theme(
              data: Theme.of(context).copyWith(
                  colorScheme: const ColorScheme.light(
                    primary: Colors.black,
                    onPrimary: Colors.white,
                  ),
                  textButtonTheme: TextButtonThemeData(
                      style:
                      TextButton.styleFrom(foregroundColor: Colors.black))),
              child: child!);
        },
      );
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:  const Text("Click here to select DATE",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),centerTitle: true,

      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),fixedSize: const Size(200, 50),
                      elevation: 20),

                  onPressed: () {
                    selectTimePicker(context);
                  },
                  child: const Text(
                    "Select Date",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
