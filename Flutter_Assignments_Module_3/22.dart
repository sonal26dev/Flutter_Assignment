// 22. Create an application with Navigation Drawer with 3 tabs Gallery, audio and video and design each page with dummy data
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Q_22(),
    );
  }
}
class Q_22 extends StatefulWidget {
  const Q_22({Key? key}) : super(key: key);

  @override
  State<Q_22> createState() => _Q_22State();
}

class _Q_22State extends State<Q_22> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepPurple,
        title: Center(
          child: Text('Navigation Drawer',
            style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold,
                shadows: [Shadow(color: Colors.white,offset: Offset(2, 2),blurRadius: 10)]),
          ),
        ),),
        drawer: Drawer(
          backgroundColor: Colors.deepPurple,
          child: ListView(
            children: [
              DrawerHeader(child:Text('Drawer Example',style: TextStyle(fontSize: 30),)),
              ListTile(
                enabled: true,
                leading: Icon(Icons.browse_gallery,size: 50),
                title: Text("Gallery",style: TextStyle(fontSize: 20)),
                subtitle: Text("Photos"),
                splashColor: Colors.white,
                onTap: () {
                },
              ),
              ListTile(
                enabled: true,
                leading: Icon(Icons.video_collection_outlined,size: 50),
                title: Text("Audio",style: TextStyle(fontSize: 20)),
                subtitle: Text("Mp 3"),
                splashColor: Colors.white,
                onTap: () {

                },
              ),
              ListTile(
                enabled: true,
                leading: Icon(Icons.audio_file,size: 50),
                title: Text("Video",style: TextStyle(fontSize: 20)),
                subtitle: Text("Mp 4"),
                splashColor: Colors.white,
                onTap: () {

                },
              ),

            ],
          ),
        ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            fixedSize:
                            MaterialStatePropertyAll(Size(330, 40)),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(10))
                            ),backgroundColor: MaterialStatePropertyAll(Colors.black54)
                        ),
                        onPressed: () {
                          print("search Anything you like");
                        },
                        onLongPress: () {
                          print("Wait searching..........");
                        },
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.search,
                                    color: Colors.white30, size: 35),
                                Text(
                                  'Search',
                                  style: TextStyle(
                                      color: Colors.white30, fontSize: 20),
                                )
                              ],
                            )
                          ],
                        )),
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        OutlinedButton(
                            style: ButtonStyle(
                              fixedSize:
                              MaterialStatePropertyAll(Size(90, 40)),
                              // backgroundColor:MaterialStatePropertyAll(Colors.deepPurple),
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                            onPressed: () {
                              print("Shopping ");
                            },
                            onLongPress: () {
                              print("Processing .......");
                            },
                            child: Text('Shop'))
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        OutlinedButton(
                            style: ButtonStyle(
                              fixedSize:
                              MaterialStatePropertyAll(Size(90, 40)),
                              // backgroundColor:MaterialStatePropertyAll(Colors.deepPurple),
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                            onPressed: () {
                              print("Decoration ");
                            },
                            onLongPress: () {
                              print("Processing .......");
                            },
                            child: Text('Decor'))
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        OutlinedButton(
                            style: ButtonStyle(
                              fixedSize:
                              MaterialStatePropertyAll(Size(90, 40)),
                              // backgroundColor:MaterialStatePropertyAll(Colors.deepPurple),
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                            onPressed: () {
                              print("Traveling ");
                            },
                            onLongPress: () {
                              print("Processing .......");
                            },
                            child: Text('Travel'))
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        OutlinedButton(
                            style: ButtonStyle(
                              fixedSize:
                              MaterialStatePropertyAll(Size(120, 40)),
                              // backgroundColor:MaterialStatePropertyAll(Colors.deepPurple),
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                            onPressed: () {
                              print("Architecture ");
                            },
                            onLongPress: () {
                              print("Processing .......");
                            },
                            child: Text('Architecture'))
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/OIP.G3wTX3rI_JuTmHhlrvYhPAHaJs?pid=ImgDet&w=180&h=236&c=7&dpr=1.4'),
                    height: 150,
                    width: 121,
                  ),
                  Image(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/OIP.JC5IjfixGTN0UPsiM4wxbwHaJQ?w=142&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7'),
                    height: 150,
                    width: 121,
                  ),
                  Image(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/OIP.4b-d2xEgzyIrAmMDjkspPgHaJQ?w=141&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7'),
                    height: 150,
                    width: 121,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/OIP.4b-d2xEgzyIrAmMDjkspPgHaJQ?w=141&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7'),
                    height: 150,
                    width: 121,
                  ),
                  Image(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/OIP.G3wTX3rI_JuTmHhlrvYhPAHaJs?pid=ImgDet&w=180&h=236&c=7&dpr=1.4'),
                    height: 150,
                    width: 121,
                  ),
                  Image(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/OIP.JC5IjfixGTN0UPsiM4wxbwHaJQ?w=142&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7'),
                    height: 150,
                    width: 121,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/OIP.G3wTX3rI_JuTmHhlrvYhPAHaJs?pid=ImgDet&w=180&h=236&c=7&dpr=1.4'),
                    height: 150,
                    width: 121,
                  ),
                  Image(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/OIP.JC5IjfixGTN0UPsiM4wxbwHaJQ?w=142&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7'),
                    height: 150,
                    width: 121,
                  ),
                  Image(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/OIP.4b-d2xEgzyIrAmMDjkspPgHaJQ?w=141&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7'),
                    height: 150,
                    width: 121,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/OIP.4b-d2xEgzyIrAmMDjkspPgHaJQ?w=141&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7'),
                    height: 150,
                    width: 121,
                  ),
                  Image(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/OIP.G3wTX3rI_JuTmHhlrvYhPAHaJs?pid=ImgDet&w=180&h=236&c=7&dpr=1.4'),
                    height: 150,
                    width: 121,
                  ),
                  Image(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/OIP.JC5IjfixGTN0UPsiM4wxbwHaJQ?w=142&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7'),
                    height: 150,
                    width: 121,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/OIP.G3wTX3rI_JuTmHhlrvYhPAHaJs?pid=ImgDet&w=180&h=236&c=7&dpr=1.4'),
                    height: 150,
                    width: 121,
                  ),
                  Image(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/OIP.JC5IjfixGTN0UPsiM4wxbwHaJQ?w=142&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7'),
                    height: 150,
                    width: 121,
                  ),
                  Image(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/OIP.4b-d2xEgzyIrAmMDjkspPgHaJQ?w=141&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7'),
                    height: 150,
                    width: 121,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/OIP.JC5IjfixGTN0UPsiM4wxbwHaJQ?w=142&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7'),
                    height: 150,
                    width: 121,
                  ),
                  Image(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/OIP.4b-d2xEgzyIrAmMDjkspPgHaJQ?w=141&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7'),
                    height: 150,
                    width: 121,
                  ),
                  Image(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/OIP.G3wTX3rI_JuTmHhlrvYhPAHaJs?pid=ImgDet&w=180&h=236&c=7&dpr=1.4'),
                    height: 150,
                    width: 121,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/OIP.4b-d2xEgzyIrAmMDjkspPgHaJQ?w=141&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7'),
                    height: 150,
                    width: 121,
                  ),
                  Image(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/OIP.G3wTX3rI_JuTmHhlrvYhPAHaJs?pid=ImgDet&w=180&h=236&c=7&dpr=1.4'),
                    height: 150,
                    width: 121,
                  ),
                  Image(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/OIP.JC5IjfixGTN0UPsiM4wxbwHaJQ?w=142&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7'),
                    height: 150,
                    width: 121,
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
