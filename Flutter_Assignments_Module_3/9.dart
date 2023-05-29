//Q- 9. Write a program in android display screen color which the Color will be select from the radiobutton.
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Q_9(),
    );

  }
}
class Q_9 extends StatefulWidget {
  const Q_9({Key? key}) : super(key: key);


  @override
  State<Q_9> createState() => _Q_9State();
}

class _Q_9State extends State<Q_9> {
  var colors = [
    Colors.pink,
    Colors.teal,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.cyan,
    Colors.purple,
    Colors.lime,
    Colors.brown,
    Colors.blue,
    Colors.red
  ];
  Color _bgColor = Colors.white12;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
            child: Text(
          'Set background color',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: BorderSide.strokeAlignOutside),
        )),
      ),
      body: Center(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        color: _bgColor,
        child: Column(
          children: [
            RadioListTile(
                value: colors[0],
                title: Text("Pink",
                    style: TextStyle(
                        letterSpacing: BorderSide.strokeAlignOutside,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                groupValue: _bgColor,
                activeColor: Colors.pinkAccent,
                onChanged: (value) {
                  setState(() {
                    _bgColor = colors[0];
                  });
                }),
            RadioListTile(
              value:colors[1],
              title: Text("Teal",
                  style: TextStyle(
                      letterSpacing: BorderSide.strokeAlignOutside,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              groupValue: _bgColor,
              activeColor: Colors.tealAccent,
              onChanged: (value) {
                setState(() {
                  _bgColor = colors[1];
                });
              },
            ),
            RadioListTile(
              value: colors[2],
              title: Text("DeepOrange",
                  style: TextStyle(
                      letterSpacing: BorderSide.strokeAlignOutside,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              groupValue: _bgColor,
              activeColor: Colors.orangeAccent,
              onChanged: (value) {
                setState(() {
                  _bgColor = colors[2];
                });
              },
            ),
            RadioListTile(
              value: colors[3],
              title: Text("LightGreen",
                  style: TextStyle(
                      letterSpacing: BorderSide.strokeAlignOutside,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              groupValue: _bgColor,
              activeColor: Colors.green,
              onChanged: (value) {
                setState(() {
                  _bgColor = colors[3];
                });
              },
            ),
            RadioListTile(
              value:colors[4],
              title: Text("Cyan",
                  style: TextStyle(
                      letterSpacing: BorderSide.strokeAlignOutside,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              groupValue: _bgColor,
              activeColor: Colors.cyanAccent,
              onChanged: (value) {
                setState(() {
                  _bgColor = colors[4];
                });
              },
            ),
            RadioListTile(
              value: colors[5],
              title: Text("Purple",
                  style: TextStyle(
                      letterSpacing: BorderSide.strokeAlignOutside,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              groupValue: _bgColor,
              activeColor: Colors.deepPurple,
              onChanged: (value) {
                setState(() {
                  _bgColor = colors[5];
                });
              },
            ),
            RadioListTile(
              value: colors[6],
              title: Text("Lime",
                  style: TextStyle(
                      letterSpacing: BorderSide.strokeAlignOutside,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              groupValue: _bgColor,
              activeColor: Colors.limeAccent,
              onChanged: (value) {
                setState(() {
                  _bgColor = colors[6];
                });
              },
            ),
            RadioListTile(
              value: colors[7],
              title: Text("Brown",
                  style: TextStyle(
                      letterSpacing: BorderSide.strokeAlignOutside,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              groupValue: _bgColor,
              activeColor: Colors.blueGrey,
              onChanged: (value) {
                setState(() {
                  _bgColor = colors[7];
                });
              },
            ),
            RadioListTile(
              value: colors[8],
              title: Text("Blue",
                  style: TextStyle(
                      letterSpacing: BorderSide.strokeAlignOutside,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              groupValue: _bgColor,
              activeColor: Colors.lightBlueAccent,
              onChanged: (value) {
                setState(() {
                  _bgColor = colors[8];
                });
              },
            ),
            RadioListTile(
              value: colors[9],
              title: Text("Red",
                  style: TextStyle(
                      letterSpacing: BorderSide.strokeAlignOutside,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              groupValue: _bgColor,
              activeColor: Colors.redAccent,
              onChanged: (value) {
                setState(() {
                  _bgColor = colors[9];
                });
              },
            )
          ],
        ),
      )),
    );
  }
}
