// 21. Create an application with bottom navigation with 3 tabs Gallery, audio and video and design each page with dummy data
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Q_21(),
    );
  }
}

class Q_21 extends StatefulWidget {
  const Q_21({Key? key}) : super(key: key);

  @override
  State<Q_21> createState() => _Q_21State();
}

class _Q_21State extends State<Q_21> {
  int selectedindex = 0;

  List<Widget> textitem = [
    Image(
        image: NetworkImage(
            'https://th.bing.com/th/id/R.9d16c886972180ffe7477ec226d03dfc?rik=8fzi0KTWoPUvEg&riu=http%3a%2f%2fcdn.onlinewebfonts.com%2fsvg%2fimg_562621.png&ehk=7%2bGLHs54LMcKmEHE1jTqnPbp7oJSLGzqlH%2fTppaE7ZY%3d&risl=&pid=ImgRaw&r=0')),
    Image(
        image: NetworkImage(
            'https://th.bing.com/th/id/OIP.qBjonnCq-qfHZ0QleR8aLgHaGC?w=226&h=184&c=7&r=0&o=5&dpr=1.3&pid=1.7')),
    Image(
        image: NetworkImage(
            'https://cdn.icon-icons.com/icons2/916/PNG/512/Audio_icon-icons.com_71845.png'
        )
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 20,
        title: Text("Bottom Navigation screen",
            style: TextStyle(
                letterSpacing: 2,
                decoration: TextDecoration.combine([
                  TextDecoration.overline,
                  TextDecoration.underline,
                ]),
                color: Colors.purpleAccent,
                backgroundColor: Colors.black)),
        centerTitle: true,
      ),
      body: Center(
          child: textitem.elementAt(
        selectedindex,
      )),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedLabelStyle: TextStyle(color: Colors.white),
        elevation: BouncingScrollSimulation.maxSpringTransferVelocity,
        selectedItemColor: Colors.white,
        useLegacyColorScheme: true,
        unselectedFontSize: 12,
        unselectedItemColor: Colors.purpleAccent,
        unselectedLabelStyle: TextStyle(color: Colors.deepPurpleAccent),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.browse_gallery,size: 50), label: "Gallery"),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined,size: 50), label: "Video"),
          BottomNavigationBarItem(icon: Icon(Icons.audio_file,size: 50), label: "Audio"),
        ],
        currentIndex: selectedindex,
        onTap: (value) {
          setState(() {
            selectedindex = value;
          });
        },
      ),
    );
  }
}
