// Question_27 : Create an Android Application which Manage Activity Lifecycle  Stages and Showing Toast with Performing Different Stages.
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Q_27(),
    );
  }
}
class Q_27 extends StatefulWidget {
  const Q_27({super.key});

  @override
  State<Q_27> createState() => _Q_27State();
}

class _Q_27State extends State<Q_27> with WidgetsBindingObserver{
  TextEditingController? _controller;
  void initState() {
    // TODO: implement initState
    super.initState();
    Fluttertoast.showToast(
        msg: "Init Method Call",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
    WidgetsBinding.instance.addObserver(this);
    _controller = TextEditingController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
    Fluttertoast.showToast(
        msg: "Dispose Method Call",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
    _controller!.dispose();
  }

  @override
  void didUpdateWidget(covariant Q_27 oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    Fluttertoast.showToast(
        msg: "didUpdateWidget",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  @override
  void activate() {
    // TODO: implement activate
    super.activate();
    Fluttertoast.showToast(
        msg: "Active Mathod Call",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }


  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
    if(state == AppLifecycleState.resumed){
      Fluttertoast.showToast(
          msg: "Back To Online",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }else if(state == AppLifecycleState.paused){
      Fluttertoast.showToast(
          msg: "Back To Offline",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }else if(state == AppLifecycleState.detached){
      Fluttertoast.showToast(
          msg: "Close The App",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 20,
        title: Text('Activity Lifecycle',style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide(width: 30,color: Colors.purple)),
                hintText: "  Enter something ",
                hintStyle: TextStyle(color: Colors.black45,fontSize: 20),
              ),
              cursorColor: Colors.black,
              controller: _controller,
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),

            ),
          )
        ),
      ),
    );
  }
}
