// 23. create a Phone call App when user first time open the app it will automatically generate one dialog which has two option allow,deny if click on allow permission is grant in settings

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Q_23(),
    );
  }
}
class Q_23 extends StatefulWidget {
  const Q_23({Key? key}) : super(key: key);
  @override
  State<Q_23> createState() => _Q_23State();
}
class _Q_23State extends State<Q_23> {
  Future<void> DialogBox(BuildContext context) async {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Grant Permissions"),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Click here⇒",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Allow access",style: TextStyle(fontSize: 20),))
            ],
          ),
        ),
      );
    });
  }
  List<String> Contactlist = [
    '987654321',
    '987654321',
    '987654321',
    '987654321',
    '987654321',
    '987654321',
    '987654321',
    '987654321',
    '987654321',
    '987654321',
    '987654321',
    '987654321',
    '987654321',
    '987654321',
    '987654321',
    '987654321',
    '987654321',
    '987654321',
  ];
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DialogBox(context),
      builder: (context, snapshot) => Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(backgroundColor: Colors.black,
          title: Text('Contact List'),
        ),
        body: ListView.builder(itemBuilder: (context, index) {
          return ListTile(
            selected: true,
            enabled: true,
            onTap: () {},
            leading: Icon(Icons.call,size: 30,color: Colors.white54),
            title: Text(Contactlist[index],style: TextStyle(fontSize: 30,letterSpacing: 5,color: Colors.white)),
            trailing: Icon(Icons.edit,size: 30,color: Colors.white54),
          );
        },itemCount: 18,
        )
    ),);
  }
}
