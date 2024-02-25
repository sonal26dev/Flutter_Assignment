import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_widget.dart';

class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
final _emailController=TextEditingController();
final  _passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loginBody(context,
        emailController: _emailController,
        passwordController: _passwordController,
      ),
    );
  }
}
