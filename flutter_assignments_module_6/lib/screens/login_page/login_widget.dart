import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignments_module_6/firebaseservices/firebase_services.dart';
import 'package:flutter_assignments_module_6/screens/home_page/home_screen.dart';
import 'package:flutter_assignments_module_6/screens/login_page/login_controller.dart';

import '../signup_page/signup_screen.dart';

final _myloginkey = GlobalKey<FormState>();
Widget loginBody( BuildContext context,{
   required TextEditingController emailController,
  required TextEditingController passwordController,
}) {
  return Form(
      key: _myloginkey,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/images/chat.png'),color: Colors.deepPurple,
                    width: 120),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Chatter',
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      fontStyle: FontStyle.italic),
                ),
                textformfieldLoginEmail(emailController),
                textformfieldLoginPassword(passwordController),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.deepPurple),
                    elevation: MaterialStatePropertyAll(10),
                    fixedSize: MaterialStatePropertyAll(Size(300, 50))),
                    onPressed: () {
                      String email= emailController.text.toString().trim();
                      String password= passwordController.text.toString().trim();
                      if (_myloginkey.currentState!.validate()) {
                        login(email, password, context);
                      }
                    },
                    child: Text('LOGIN',style: TextStyle(color: Colors.white,fontSize: 20),)),
                SizedBox(
                  height: 20,
                ),
                Text('or create on account'),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStatePropertyAll(Colors.deepPurple),
                        elevation: MaterialStatePropertyAll(10),
                        fixedSize: MaterialStatePropertyAll(Size(300, 50))),
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => signup_screen(),));
                    },
                    child: Text('SIGNUP',style: TextStyle(color: Colors.white,fontSize: 20),)),
              ],
            ),
          ),
        ),
      ));
}
Firebase_Service _service= Firebase_Service();
Future<void> login(String email,String password,BuildContext context) async {
  var result = await _service.login(email, password,);
  if (result is UserCredential) {
    print("ThankYou for Login");
    showSnackBarLogin(context);
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => homescreen(),), (route) => false);
  } else if(result is String) {
    print("Invalid Email and password ");
    showSnackBarUnvalidLogin(context);
  }
  else{
    print("Wrong password provided for that user");
    showSnackBarLoginwrongpswd(context);
  }
}
