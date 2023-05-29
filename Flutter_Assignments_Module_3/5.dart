// Q-5. create an application to increate font size when plus button click and decrease when minus button click
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      title: 'Material App',
      home: Q_5(),
    );
  }
}

class Q_5 extends StatefulWidget {
  const Q_5({Key? key}) : super(key: key);

  @override
  State<Q_5> createState() => _Q_5State();
}

class _Q_5State extends State<Q_5> {
  double fontSize = 20.0;

  void increment() {
    setState(() {
      fontSize += 2;
    });
  }

  void decrement() {
    setState(() {
      fontSize -= 2;
    });
  }
  void refresh(){
    setState(() {
      fontSize=20.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Font size increate and decrease")),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Flutter",
                  style: TextStyle(
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                          fixedSize: MaterialStatePropertyAll(Size(100, 50)),
                          side: MaterialStatePropertyAll(
                              BorderSide(color: Colors.white, width: 2))),
                      onPressed: () {
                        increment();
                      },
                      child: Icon(
                        Icons.add,
                        size: 40,
                      )),
                  ElevatedButton(
                      style: ButtonStyle(
                          fixedSize: MaterialStatePropertyAll(Size(100, 50)),
                      side: MaterialStatePropertyAll(BorderSide(color: Colors.white,width: 2))),
                      onPressed: () {
                        decrement();
                      },
                      child: Icon(
                        Icons.remove,
                        size: 40,
                      ))
                ],
              )
            ],
          ),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: Colors.white12,
        onPressed: () {
          refresh();
        },
        child: Icon(Icons.refresh_outlined,size: 40),
      ),
    );
  }
}
