// 11. Create custom toolbar as per given below design Create toolbar with spinner and search functionality
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Q_11(),
    );
  }
}

class Q_11 extends StatefulWidget {
  const Q_11({Key? key}) : super(key: key);

  @override
  State<Q_11> createState() => _Q_11State();
}

class _Q_11State extends State<Q_11> {
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
                  child: Text("Home screen settings",style: TextStyle(fontSize: 20)),
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
              Center(child:
              Text("Press COLOR BOX",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Tooltip(
                          child: Container(
                            height: 150,
                            width: 100,
                            color: Colors.deepPurpleAccent,

                          ),
                          message: 'deepPurpleAccent',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Tooltip(
                          child: Container(
                            height: 100,
                            width: 100,
                            color: Colors.deepOrange,

                          ),
                          message: 'deepOrange',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Tooltip(
                          child: Container(
                            height: 150,
                            width: 100,
                            color: Colors.purple,

                          ),
                          message: 'purple',
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Column(
                      children: [
                        Tooltip(
                          child: Container(

                            height: 100,
                            width: 100,
                            color: Colors.lightBlueAccent,
                          ),
                          message: 'lightBlueAccent',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Tooltip(
                          child: Container(

                            height: 150,
                            width: 100,
                            color: Colors.brown,
                          ),
                          message: 'brown',
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
                          child: Container(
                            height: 100,
                            width: 100,
                            color: Colors.purpleAccent,

                          ),
                          message: 'purpleAccent',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Tooltip(
                          child: Container(
                            height: 150,
                            width: 100,
                            color: Colors.green,

                          ),
                          message: 'green',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Tooltip(
                          child: Container(
                            height: 100,
                            width: 100,
                            color: Colors.cyan,

                          ),
                          message: 'cyan',
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Column(
                      children: [
                        Tooltip(
                          child: Container(

                            height: 150,
                            width: 100,
                            color: Colors.pinkAccent,
                          ),
                          message: 'pinkAccent',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Tooltip(
                          child: Container(

                            height: 100,
                            width: 100,
                            color: Colors.greenAccent,
                          ),
                          message: 'greenAccent',
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
                          child: Container(
                            height: 150,
                            width: 100,
                            color: Colors.teal,

                          ),
                          message: 'teal',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Tooltip(
                          child: Container(
                            height: 100,
                            width: 100,
                            color: Colors.deepPurple,

                          ),
                          message: 'deepPurple',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Tooltip(
                          child: Container(
                            height: 150,
                            width: 100,
                            color: Colors.blue,

                          ),
                          message: 'blue',
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Column(
                      children: [
                        Tooltip(
                          child: Container(

                            height: 100,
                            width: 100,
                            color: Colors.indigo,
                          ),
                          message: 'indigo',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Tooltip(
                          child: Container(

                            height: 150,
                            width: 100,
                            color: Colors.lightGreen,
                          ),
                          message: 'LighGreen',
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
                          child: Container(
                            height: 100,
                            width: 100,
                            color: Colors.orange,

                          ),
                          message: 'Orange',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Tooltip(
                          child: Container(
                            height: 150,
                            width: 100,
                            color: Colors.lightGreenAccent,

                          ),
                          message: 'lightGreenAccent',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Tooltip(
                          child: Container(
                            height: 100,
                            width: 100,
                            color: Colors.pink,

                          ),
                          message: 'pink',
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Column(
                      children: [
                        Tooltip(
                          child: Container(

                            height: 150,
                            width: 100,
                            color: Colors.red,
                          ),
                          message: 'red',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Tooltip(
                          child: Container(

                            height: 100,
                            width: 100,
                            color: Colors.yellow,
                          ),
                          message: 'red',
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

    );;
  }
}

