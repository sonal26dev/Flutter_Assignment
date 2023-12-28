// Question_14 :Write a code to display simple alert dialog with title, description and icon when button is clicked
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Q_14(),
    );
  }
}
class Q_14 extends StatefulWidget {
  const Q_14({super.key});

  @override
  State<Q_14> createState() => _Q_14State();
}

class _Q_14State extends State<Q_14> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 20,
        title: Center(
          child: Text("Alert Dialog",
              style: TextStyle(
                letterSpacing: 2,
                decoration: TextDecoration.combine([
                  TextDecoration.overline,
                  TextDecoration.underline,
                ]),
                color: Colors.black,
                fontSize: 30,
                backgroundColor: Colors.teal[100],
              )),
        ),
      ),
      body: Center(
          child: ElevatedButton(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.teal),
                elevation: MaterialStatePropertyAll(20),
                foregroundColor: MaterialStatePropertyAll(Colors.black),
                fixedSize: MaterialStatePropertyAll(Size(300, 50))),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    icon: const Icon(
                      Icons.face,
                      size: 80,
                      color: Colors.teal,
                      weight: 50,
                    ),
                    title: const Text('This is Custom Dialod'),
                    content: const Text('Confirm or cancel the deletion process',
                        textAlign: TextAlign.center),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('CONFIRM',
                                style: TextStyle(
                                  backgroundColor: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black,
                                )),
                            Text(' CANCLE ',
                                style: TextStyle(
                                  backgroundColor: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black,
                                )),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              );
            }, child: const Text('Show Alert Dialog',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          )),
    );
  }
}
