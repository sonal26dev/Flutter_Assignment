import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignments_module_6/firebaseservices/firebase_services.dart';
import 'package:flutter_assignments_module_6/model/useraccount.dart';
import 'package:flutter_assignments_module_6/screens/home_page/home_screen.dart';
import 'package:flutter_assignments_module_6/screens/signup_page/singup_controller.dart';

final _mySignUpKey = GlobalKey<FormState>();
Widget SignUpBody(
  BuildContext context, {
  required TextEditingController nameController,
  required TextEditingController contactController,
  required TextEditingController emailController,
  required TextEditingController passwordController,
}) {
  return Form(
      key: _mySignUpKey,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image(
                    image: AssetImage('assets/images/chat.png'),
                    color: Colors.deepPurple,
                    width: 100),
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
                SizedBox(
                  height: 10,
                ),
                Text("WORLD'S MOST PRIVATE CHATTING APP",
                    style: TextStyle(
                        color: Colors.deepPurple, fontWeight: FontWeight.bold)),
                textformfieldSignUpName(nameController),
                textformfieldSignUpContact(contactController),
                textformfieldSignUpEMail(emailController),
                textformfieldSignUpPassword(passwordController),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.deepPurple),
                        elevation: MaterialStatePropertyAll(10),
                        fixedSize: MaterialStatePropertyAll(Size(300, 50))),
                    onPressed: () {
                      String email = emailController.text.toString().trim();
                      String password =
                          passwordController.text.toString().trim();
                      String name = nameController.text.toString().trim();
                      String contact = contactController.text.toString().trim();
                      if (_mySignUpKey.currentState!.validate()) {
                        createAccount(email, password, name, contact, context);
                      }
                    },
                    child: Text(
                      'SIGNUP',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
              ],
            ),
          ),
        ),
      ));
}

DatabaseReference mRef = FirebaseDatabase.instance.ref();
Firebase_Service _service = Firebase_Service();

Future<void> createAccount(String email, String password, String name,
    String contact, BuildContext context) async {
  var credential = await _service.SignUp(email, password);
  if (credential is UserCredential) {
    if (credential.user != null) {
      UserAccount account = UserAccount(
          email: email,
          name: name,
          contact: contact,
          password: password,
          id: credential.user!.uid);
      mRef
          .child('user-node')
          .child(account.id!)
          .set(account.toMap())
          .then((value) {
        showSnackBarSingup(context);
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => homescreen(),
            ),
            (route) => false);
      });
    }
  } else if (credential is String) {
    showSnackBarSingupAlreadyExists(context);
  }
}
