import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

Widget textformfieldLoginEmail(TextEditingController _emailController) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10, top: 25),
    child: TextFormField(
      validator: MultiValidator([
        RequiredValidator(errorText: "This field is required"),
        EmailValidator(errorText: "Not a specific email")
      ]),
      keyboardType: TextInputType.emailAddress,
      controller: _emailController,
      cursorColor: Colors.deepPurple,
      style: TextStyle(color: Colors.deepPurple, fontSize: 18),
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.deepPurple.shade50,
          hintText: "Email",
          hintStyle: TextStyle(color: Colors.deepPurple),
          prefixIcon: Icon(Icons.email, color: Colors.deepPurple),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepPurple)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepPurple),
              borderRadius: BorderRadius.circular(50))),
    ),
  );
}

Widget textformfieldLoginPassword(TextEditingController _passwordController) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 30),
    child: TextFormField(
      validator: MultiValidator([
        RequiredValidator(errorText: "This field is required"),
        LengthRangeValidator(min: 6, max: 6, errorText: "Enter six Digits Password"),
        PatternValidator(r'(?=.*?[#?!@$%^&*-])',
            errorText: "password must have at least one special character")
      ]),
      keyboardType: TextInputType.visiblePassword,
      controller: _passwordController,
      cursorColor: Colors.deepPurple,
      style: TextStyle(color: Colors.deepPurple, fontSize: 18),
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.deepPurple.shade50,
          hintText: "Password",
          hintStyle: TextStyle(color: Colors.deepPurple),
          prefixIcon: Icon(Icons.lock, color: Colors.deepPurple),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepPurple)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepPurple),
              borderRadius: BorderRadius.circular(50))),
    ),
  );
}
void showSnackBarLogin(BuildContext context) {
  SnackBar snackBar = const SnackBar(
    content: Text("ThankYou for Login",
        style: TextStyle(color: Colors.white, fontSize: 20)),
    backgroundColor: Colors.deepPurple,
    behavior: SnackBarBehavior.floating,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
void showSnackBarUnvalidLogin(BuildContext context) {
  print('thiss is call');
  SnackBar snackBar =  SnackBar(
    content: Text("Invalid Email and password ",
        style: TextStyle(color: Colors.white, fontSize: 20)),
    backgroundColor: Colors.deepPurple,
    behavior: SnackBarBehavior.floating,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
void showSnackBarLoginwrongpswd(BuildContext context) {
  print("this not valid email");
  SnackBar snackBar = const SnackBar(
    content: Text("Wrong password provided for that user.",
        style: TextStyle(color: Colors.white, fontSize: 20)),
    backgroundColor: Colors.deepPurple,
    behavior: SnackBarBehavior.floating,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}