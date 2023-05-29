// Q-1. Create an application to take input number from user and print its reverse number inTextView without button.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Q_1(),
    );
  }
}

class Q_1 extends StatefulWidget {
  const Q_1({Key? key}) : super(key: key);
  @override
  State<Q_1> createState() => _Q_1State();
}

class _Q_1State extends State<Q_1> {
  var num = TextEditingController();
  var number = '';
  ReverseNumber() {
    setState(() {
      var input = num.text;
      var reverse = '';
      for (int i = input.length - 1; i >= 0; i--) {
        reverse += input[i];
      }
      number = reverse;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text(' Reverse Number in TextView')),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            TextFormField(
              style: TextStyle(color: Colors.black, fontSize: 25),
              cursorColor: Colors.black,
              keyboardType: TextInputType.number,
              controller: num,
              onChanged:(value) => ReverseNumber(),
              decoration: InputDecoration(
                  label: Text("Enter any Number",
                      style: TextStyle(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black, width: 3)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: Colors.white24,
                  filled: true),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black),
                    elevation: MaterialStatePropertyAll(15),
                    fixedSize: MaterialStatePropertyAll(Size(240, 35))),
                onPressed: () {
                  ReverseNumber();
                },
                child: Text(
                  "REVERSE Number",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 50,
            ),
            Text(
              '$number',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,),
            ),
          ],
        ),
      )),
    );
  }
}
