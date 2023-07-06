// 19. Write a code to display edit, view, delete options with context menu in listview and also perform respective operation on user's choice
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Q_19(),
    );
  }
}
class Q_19 extends StatefulWidget {
  const Q_19({Key? key}) : super(key: key);
  @override
  State<Q_19> createState() => _Q_19State();
}

class _Q_19State extends State<Q_19> {
  TextEditingController _nameController= TextEditingController();

  var myText=" ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 20,
        title: const Text("Context  Menu",
            style: TextStyle(
                fontWeight: FontWeight.bold, letterSpacing: 2, fontSize: 30)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 50,),
            TextField(
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
              cursorColor: Colors.teal,
              
              controller: _nameController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  focusColor: Colors.black,
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal,width: 2),borderRadius: BorderRadius.circular(10)),
                  hintText: "Enter Something Here",
                  fillColor: Colors.white,
                  filled: true,
                  
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            Text('Click here',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.teal,fontSize: 30)),
            ElevatedButton(style:const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.teal),
                side: MaterialStatePropertyAll(BorderSide(width: 2)),
            ),
              onPressed: () {
              myText=_nameController.text;
              setState(() {
              });
            }, child:
                 Icon(Icons.arrow_downward,size: 50,)
            ),

            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(myText,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                SizedBox(width: 20,),
                PopupMenuButton(
                  iconSize: 30,
                  itemBuilder: (context) {
                    return const [
                      PopupMenuItem(
                        value: 0,
                        child: Text("Edit",style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold,fontSize: 20,)),
                      ),
                      PopupMenuItem(
                        value: 1,
                        child: Text("Delete",style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold,fontSize: 20,)),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: Text("View",style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold,fontSize: 20)),
                      ),
                    ];
                  },
                )
              ],
            ),



          ],),
      ),
    );
  }
}
