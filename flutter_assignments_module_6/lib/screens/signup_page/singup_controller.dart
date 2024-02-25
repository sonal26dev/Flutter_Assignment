import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

Widget textformfieldSignUpName(TextEditingController _nameController){
  return Padding(
    padding: const EdgeInsets.only(top: 30),
    child: TextFormField(
      keyboardType: TextInputType.name,
      controller: _nameController,
      cursorColor: Colors.deepPurple,
      style: TextStyle(color: Colors.deepPurple,fontSize: 18),
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.deepPurple.shade50,
          hintText: "Name",
          hintStyle: TextStyle(color: Colors.deepPurple),
          prefixIcon: Icon(Icons.person,color: Colors.deepPurple),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.deepPurple)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepPurple),
              borderRadius: BorderRadius.circular(50)
          )
      ),
    ),
  );
}
Widget textformfieldSignUpContact(TextEditingController _contactController){
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: TextFormField(
      validator: MultiValidator([
        RequiredValidator(errorText: "This field is required"),
        LengthRangeValidator(min: 10, max: 10, errorText: "Enter 10 digits Mobile number")
      ]),
      keyboardType: TextInputType.phone,
      controller: _contactController,
      cursorColor: Colors.deepPurple,
      style: TextStyle(color: Colors.deepPurple,fontSize: 18),
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.deepPurple.shade50,
          hintText: "Contact",
          hintStyle: TextStyle(color: Colors.deepPurple),
          prefixIcon: Icon(Icons.call,color: Colors.deepPurple),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.deepPurple)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepPurple),
              borderRadius: BorderRadius.circular(50)
          )
      ),
    ),
  );
}

Widget textformfieldSignUpEMail(TextEditingController _emailController) {
  return Padding(
    padding: const EdgeInsets.only(top: 10),
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

Widget textformfieldSignUpPassword(TextEditingController _passwordController) {
  return Padding(
    padding: const EdgeInsets.only(top: 10,bottom: 30),
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
void showSnackBarSingup(BuildContext context) {
  SnackBar snackBar = const SnackBar(
    content: Text("ThankYou for SignUp",
        style: TextStyle(color: Colors.white, fontSize: 20)),
    backgroundColor: Colors.deepPurple,
    behavior: SnackBarBehavior.floating,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
void showSnackBarSingupAlreadyExists(BuildContext context) {
  SnackBar snackBar = const SnackBar(
    content: Text("The account already exists for that email.",
        style: TextStyle(color: Colors.white, fontSize: 20)),
    backgroundColor: Colors.deepPurple,
    behavior: SnackBarBehavior.floating,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
