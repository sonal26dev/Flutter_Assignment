//Q-3 Create an application with radio buttons (Add, Substraction, Multiply, Division) EditText (number1, number2) and print result as per user choice from radio button in TextView

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Q_3(),
    );
  }
}

class Q_3 extends StatefulWidget {
  const Q_3({Key? key}) : super(key: key);

  @override
  State<Q_3> createState() => _Q_3State();
}

class _Q_3State extends State<Q_3> {
  var first_value = TextEditingController();
  var second_value = TextEditingController();


  double result = 0;
  int _value = 0;

  void refresh() {
    setState(() {
      result = 0;
      first_value.text = " ";
      second_value.text = " ";
      _value= 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('CALCULATOR')),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Text('First value',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 40,
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: first_value,
                      cursorColor: Colors.cyan,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "Enter First value",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.cyan, width: 2)),
                          filled: true,
                          fillColor: Colors.white12),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text('Second value',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: second_value,
                      cursorColor: Colors.cyan,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "Enter Second value",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.cyan, width: 2)),
                          filled: true,
                          fillColor: Colors.white12),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(
                    child: RadioListTile(
                      value:1,
                      groupValue: _value,
                      tileColor: Colors.white10,
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(color: Colors.black, width: 2,)),
                      title: Text("+",
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.bold)),
                      onChanged: (value) {
                        setState(() {
                          _value=1;
                          int num1 = int.parse(first_value.text);
                          int num2 = int.parse(second_value.text);
                          int sum = num1 + num2;

                          result = sum.toDouble();
                        });
                      },
                      activeColor: Colors.teal,
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: RadioListTile(
                      value: 2,
                      groupValue: _value,
                      tileColor: Colors.white10,
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(color: Colors.black, width: 2)),
                      title: Text("—",
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.bold)),
                      onChanged: (value) {
                        setState(() {
                          _value=2;
                          int num1 = int.parse(first_value.text);
                          int num2 = int.parse(second_value.text);
                          int sub = num1 - num2;

                          result = sub.toDouble();
                        });
                      },activeColor: Colors.teal,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: RadioListTile(
                      value: 3,
                      tileColor: Colors.white10,
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                          BorderSide(color: Colors.black, width: 2,)),
                      groupValue: _value,
                      title: Text("X",
                          style: TextStyle(
                              fontSize: 45, fontWeight: FontWeight.bold)),
                      onChanged: (value) {
                        setState(() {
                          _value=3;
                          int num1 = int.parse(first_value.text);
                          int num2 = int.parse(second_value.text);
                          int mul = num1 * num2;

                          result = mul.toDouble();
                        });
                      },activeColor: Colors.teal,
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: RadioListTile(
                      value:4,
                      tileColor: Colors.white10,
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                          BorderSide(color: Colors.black, width: 2,)),
                      groupValue: _value,
                      title: Text("/",
                          style: TextStyle(
                              fontSize: 45, fontWeight: FontWeight.bold)),
                      onChanged: (value) {
                        setState(() {
                          _value=4;
                          int num1 = int.parse(first_value.text);
                          int num2 = int.parse(second_value.text);
                          int div = num1 ~/ num2;

                          result = div.toDouble();
                        });
                      },activeColor: Colors.teal,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  Text('Result',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 55,
                  ),
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.none,
                      cursorColor: Colors.cyan,
                      decoration: InputDecoration(
                          hintText: "$result",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.cyan, width: 2)),
                          filled: true,
                          fillColor: Colors.white12),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: Colors.white12,
        mini: true,
        onPressed: () {
          refresh();
        },
        child: Icon(Icons.refresh_outlined, size: 30),
      ),
    );
  }
}
