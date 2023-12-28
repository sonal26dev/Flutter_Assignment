//Question_15 :Write a code to display alert dialog with positive, negative and neutral button and display toast respectively user's choice
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      // theme: ThemeData.dark(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Q_15(),
    );
  }
}
class Q_15 extends StatefulWidget {
  const Q_15({Key? key}) : super(key: key);

  @override
  State<Q_15> createState() => _Q_15State();
}

class _Q_15State extends State<Q_15> {
  String _selectedButton = '';

  void _showToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey[800],
        textColor: Colors.white,
        fontSize: 20.0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,elevation: 20,
        title: Text("Display Toast Massage",
            style: TextStyle(
                letterSpacing: 2,
                decoration: TextDecoration.combine([
                  TextDecoration.overline,
                  TextDecoration.underline,
                ]),
                color: Colors.purpleAccent,
                fontSize: 25,
                backgroundColor: Colors.black)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Click here',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple,fontSize: 30)),
            const Text('↓',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple,fontSize: 60)),
            ElevatedButton(
              style:const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.purple),
                elevation: MaterialStatePropertyAll(20),
                foregroundColor: MaterialStatePropertyAll(Colors.black),

              ),
              onPressed: () {
                _showDialog();
              },
              child: Text(_selectedButton,style: const TextStyle(fontSize: 50)),
            ),
          ],
        ),
      ),
    );
  }
  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return  AlertDialog(
          title: const Text('Alert Dialog'),
          content: const Text('This is an alert dialog.'),
          actions: <Widget>[
            ElevatedButton(
                style:const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.purple),
                    side: MaterialStatePropertyAll(BorderSide(width: 2))
                ),
                onPressed: () {
                  setState(() {
                    _selectedButton = 'Positive';
                  });
                  Navigator.of(context).pop();
                  _showToast('Positive button clicked.');
                },
                child: const Text('Positive',style: TextStyle(fontSize: 16),)),
            ElevatedButton(style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.purple),
                side: MaterialStatePropertyAll(BorderSide(width: 2))
            ),
                onPressed: () {
                  setState(() {
                    _selectedButton = 'Negative';
                  });
                  Navigator.of(context).pop();
                  _showToast('Negative button clicked.');
                },
                child:const Text('Negative',style: TextStyle(fontSize: 16),)),
            ElevatedButton(style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.purple),
                side: MaterialStatePropertyAll(BorderSide(width: 2))
            ),
                onPressed: () {
                  setState(() {
                    _selectedButton = 'Neutral';
                  });
                  Navigator.of(context).pop();
                  _showToast('Neutral button clicked.');
                },
                child: const Text('Neutral',style: TextStyle(fontSize: 16),)),
          ],
        );
      },
    );
  }
}