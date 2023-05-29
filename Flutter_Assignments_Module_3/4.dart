// Q-4. create an application to change background when button is clicked
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Q_4(),
    );
  }
}

class Q_4 extends StatefulWidget {
  const Q_4({Key? key}) : super(key: key);

  @override
  State<Q_4> createState() => _Q_4State();
}

class _Q_4State extends State<Q_4> {
  var index = 0;
  var status = true;

  var colors = [
    Colors.pink,
    Colors.teal,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.cyan,
    Colors.purple,
    Colors.limeAccent,
    Colors.brown,
    Colors.blue,
    Colors.redAccent
  ];

  Color bgcolor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(seconds: 1),
        height: double.infinity,
        width: double.infinity,
        color: bgcolor,
        child: Center(
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black),
                    elevation: MaterialStatePropertyAll(10),
                    fixedSize: MaterialStatePropertyAll(Size(100, 50)),
                    side: MaterialStatePropertyAll(
                        BorderSide(color: Colors.white, width: 2))),
                onPressed: () {
                  setState(() {
                    if (index > 10) {
                      index = 0;
                    }
                    index++;
                    if (status == true) {
                      bgcolor = colors[index];
                    }
                  });
                },
                child: Icon(
                  Icons.refresh_outlined,
                  size: 45,
                ))),
      ),
    );
  }
}
