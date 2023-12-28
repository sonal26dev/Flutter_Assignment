// Question_28: 28. Create an Application to take input two numbers from users and when user press button then display sum of those values of next Activity.
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Q_28()
    );
  }
}

class Q_28 extends StatefulWidget {
  const Q_28({super.key});

  @override
  State<Q_28> createState() => _Q_28State();
}

class _Q_28State extends State<Q_28> {

  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();

  String result = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Two Numbers"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              controller: num1Controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'First Number',
                  hintText: 'Enter First Number'
              ),
            ),
            const SizedBox(height: 20,),
            TextField(
              keyboardType: TextInputType.number,
              controller: num2Controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Second Number',
                  hintText: 'Enter Second Number'
              ),
            ),
            const SizedBox(height: 20,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            int sum = int.parse(num1Controller.text) + int.parse(num2Controller.text);
                            result = sum.toString();
                          });
                        }, child: const Text("Addition")),
                    const SizedBox(height: 20,width: 20,),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            int sum = int.parse(num1Controller.text) - int.parse(num2Controller.text);
                            result = sum.toString();
                          });
                        }, child: const Text("Subtraction")),
                  ],
                ),
                const SizedBox(height: 20,width: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            int sum = int.parse(num1Controller.text) * int.parse(num2Controller.text);
                            result = sum.toString();
                          });
                        }, child: const Text("Multiplication")),
                    const SizedBox(height: 20,width: 20,),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            int sum = int.parse(num1Controller.text) % int.parse(num2Controller.text);
                            result = sum.toString();
                          });
                        }, child: const Text("Division")),
                  ],
                ),


              ],
            ),
            const SizedBox(height: 30,),
            Text("Result : $result")
          ],
        ),
      ),
    );
  }
}

