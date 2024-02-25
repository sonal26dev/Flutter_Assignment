import 'package:flutter/material.dart';
import 'package:flutter_assignments_module_6/screens/signup_page/signup_widget.dart';

class signup_screen extends StatefulWidget {
  const signup_screen({super.key});
  @override
  State<signup_screen> createState() => _signup_screenState();
}
class _signup_screenState extends State<signup_screen> {
  final _nameController = TextEditingController();
  final _contactController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignUpBody(context,
        nameController: _nameController,
        contactController: _contactController,
        emailController: _emailController,
        passwordController: _passwordController,
      ),
    );
  }
}
