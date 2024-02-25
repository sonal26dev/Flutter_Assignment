import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignments_module_6/screens/home_page/home_screen.dart';
import 'package:flutter_assignments_module_6/screens/login_page/login_screen.dart';

AppBar HomeAppbar = AppBar(
  title: Text("Chatter",
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurple)),
  centerTitle: true,
  elevation: 50,
  backgroundColor: Colors.deepPurple.shade50,
  actions: [
    PopupMenuButton(
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            enabled: true,
            child: Text(
              'LogOut',
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              FirebaseAuth.instance.signOut().then((value) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => login_screen(),
                    ),
                        (route) => false);
              });
            },
          )
        ];
      },
    )
  ],
);

login_screeng() {
}
Drawer homeDrawer = Drawer(
  backgroundColor: Colors.deepPurple.shade100,
);
