// Question_13 : Create custom toolbar as per given below design Create toolbar with spinner and search functionality
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Q_13(),
    );
  }
}

class Q_13 extends StatefulWidget {
  const Q_13({Key? key}) : super(key: key);

  @override
  State<Q_13> createState() => _Q_13State();
}

class _Q_13State extends State<Q_13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 20,
        title: Container(
          width: 350,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white30, borderRadius: BorderRadius.circular(20)),
          child: TextFormField(
            decoration: const InputDecoration(

              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 6)),
              hintText: "  Search ",
              hintStyle: TextStyle(color: Colors.black45,fontSize: 20),
            ),
            cursorColor: Colors.black,
          ),
        ),
        // This button will open a menu containing 3 values
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: 0,
                  onTap: () {},
                  enabled: true,
                  child: const Text("Home screen settings",style: TextStyle(fontSize: 20)),
                ),
                const PopupMenuItem(
                  value: 1,
                  child: Text("Finder settings",style: TextStyle(fontSize: 20)),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text("Clean up pages",style: TextStyle(fontSize: 20)),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Text('Sort',style: TextStyle(fontSize: 20)),
                ),
                const PopupMenuItem(
                  value: 4,
                  child: Text('Contact us',style: TextStyle(fontSize: 20)),
                )
              ];
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Center(child:
              Text("Press COLOR BOX",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Tooltip(
                          message: 'deepPurpleAccent',
                          child: Container(
                            height: 150,
                            width: 100,
                            color: Colors.deepPurpleAccent,

                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Tooltip(
                          message: 'deepOrange',
                          child: Container(
                            height: 100,
                            width: 100,
                            color: Colors.deepOrange,

                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Tooltip(
                          message: 'purple',
                          child: Container(
                            height: 150,
                            width: 100,
                            color: Colors.purple,

                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Column(
                      children: [
                        Tooltip(
                          message: 'lightBlueAccent',
                          child: Container(

                            height: 100,
                            width: 100,
                            color: Colors.lightBlueAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Tooltip(
                          message: 'brown',
                          child: Container(

                            height: 150,
                            width: 100,
                            color: Colors.brown,
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Tooltip(
                          message: 'purpleAccent',
                          child: Container(
                            height: 100,
                            width: 100,
                            color: Colors.purpleAccent,

                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Tooltip(
                          message: 'green',
                          child: Container(
                            height: 150,
                            width: 100,
                            color: Colors.green,

                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Tooltip(
                          message: 'cyan',
                          child: Container(
                            height: 100,
                            width: 100,
                            color: Colors.cyan,

                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Column(
                      children: [
                        Tooltip(
                          message: 'pinkAccent',
                          child: Container(

                            height: 150,
                            width: 100,
                            color: Colors.pinkAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Tooltip(
                          message: 'greenAccent',
                          child: Container(

                            height: 100,
                            width: 100,
                            color: Colors.greenAccent,
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Tooltip(
                          message: 'teal',
                          child: Container(
                            height: 150,
                            width: 100,
                            color: Colors.teal,

                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Tooltip(
                          message: 'deepPurple',
                          child: Container(
                            height: 100,
                            width: 100,
                            color: Colors.deepPurple,

                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Tooltip(
                          message: 'blue',
                          child: Container(
                            height: 150,
                            width: 100,
                            color: Colors.blue,

                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Column(
                      children: [
                        Tooltip(
                          message: 'indigo',
                          child: Container(

                            height: 100,
                            width: 100,
                            color: Colors.indigo,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Tooltip(
                          message: 'LighGreen',
                          child: Container(

                            height: 150,
                            width: 100,
                            color: Colors.lightGreen,
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Tooltip(
                          message: 'Orange',
                          child: Container(
                            height: 100,
                            width: 100,
                            color: Colors.orange,

                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Tooltip(
                          message: 'lightGreenAccent',
                          child: Container(
                            height: 150,
                            width: 100,
                            color: Colors.lightGreenAccent,

                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Tooltip(
                          message: 'pink',
                          child: Container(
                            height: 100,
                            width: 100,
                            color: Colors.pink,

                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Column(
                      children: [
                        Tooltip(
                          message: 'red',
                          child: Container(

                            height: 150,
                            width: 100,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Tooltip(
                          message: 'red',
                          child: Container(

                            height: 100,
                            width: 100,
                            color: Colors.yellow,
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              )
            ],

          ),
        ),
      ),

    );
  }
}