//Q-10. Write a program you have take three seek bar controls. From three Seekbar which Seekbar value changed the background color of device will be changed.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Q_10(),
    );
  }
}

class Q_10 extends StatefulWidget {
  const Q_10({Key? key}) : super(key: key);

  @override
  State<Q_10> createState() => _Q_10State();
}

class _Q_10State extends State<Q_10> {
  double red = 0;
  double green = 0;
  double blue = 0;
  double opacity = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        title: Text('Adjust slider and change background color',style: TextStyle(fontSize: 18)),
      ),
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromRGBO(red.toInt(), green.toInt(), blue.toInt(), 0.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Slider(
                max: 100,
                min: 0,
                activeColor: Colors.red,
                inactiveColor: Colors.black,
                value: red,
                onChanged: (value) {
                  setState(() {
                    red = value;
                  });
                },
              ),
              Slider(
                max: 100,
                min: 0,
                activeColor: Colors.green,
                inactiveColor: Colors.black,
                value: green, onChanged: (value) {
                setState(() {
                  green=value;
                });
              },),

              Slider(
                max:100,
                min: 0,
                activeColor: Colors.blue,
                inactiveColor: Colors.black,
                value: blue, onChanged:(value) {
                setState(() {
                  blue=value;
                });
              },)

            ],
          ),
        ),
      ),
    );
  }
}
