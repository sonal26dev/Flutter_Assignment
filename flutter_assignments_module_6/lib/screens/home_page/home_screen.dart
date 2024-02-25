import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_widget.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  final auth = FirebaseAuth.instance;
  final ref = FirebaseDatabase.instance.ref('user-node');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppbar,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: FirebaseAnimatedList(
                  query: ref,
                  itemBuilder: (context, snapshot, animation, index) {
                    return Card(
                      color: Colors.purple[50],
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                'Name: ${snapshot.child('name').value.toString()}'),
                            Text("Contact: ${snapshot.child('contact').value.toString()}"),
                            Text("Email: ${snapshot.child('email').value.toString()}"),
                            Text("Password: ${snapshot.child('password').value.toString()}"),
                            Text("Id: ${snapshot.child('id').value.toString()}"),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      drawer: homeDrawer,
    );
  }
}
