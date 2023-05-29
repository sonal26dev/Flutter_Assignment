//Q-7. create an application to display Textview when checkbox is checked and hide otherwise

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Q_7(),
    );
  }
}

class Q_7 extends StatefulWidget {
  const Q_7({Key? key}) : super(key: key);

  @override
  State<Q_7> createState() => _Q_7State();
}

class _Q_7State extends State<Q_7> {
  bool cheaked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Showing')),
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(height: 40,),
          CheckboxListTile(
            value: cheaked,
            title: Text("Hide & Unhide"),
            onChanged: (value) {
              setState(() {
                cheaked = value!;

              });
            },
          ),
          SizedBox(height: 80,),
          Visibility(
              visible: cheaked,
              child: Column(
                children: [
                  Text(
                    "☻FLUTTER☻",
                    style: TextStyle(
                        fontSize: 40,
                      letterSpacing: 5
                    ),
                  ),
                  Image(image: NetworkImage('https://indocoder.com/wp-content/uploads/2019/06/flutter-logo-round.png'))
                ],
              ))
        ],
      )),
    );
  }
}
