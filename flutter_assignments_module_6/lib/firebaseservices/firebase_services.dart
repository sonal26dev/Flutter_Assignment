import 'package:firebase_auth/firebase_auth.dart';

class Firebase_Service {
  static final Firebase_Service _service = Firebase_Service._internal();

  factory Firebase_Service() {
    return _service;
  }
  Firebase_Service._internal();

  final FirebaseAuth mAuth = FirebaseAuth.instance;

  Future<dynamic> login(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      if (credential.user != null) {
        return credential;
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'invalid-credential') {
        return 'No user found for that email.';
      } else if (e.code == 'wrong-password' || e.code == 'invalid-credential') {
        return 'Wrong password provided for that user.';
      }
    }
  }

  Future<dynamic> SignUp(String email, String password) async {
    try {
      UserCredential credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      if (credential.user != null) {
        return credential;
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return "The password provided is too weak";
      } else if (e.code == 'email-already-in-use') {
        return 'The account already exists for that email.';
      }
    } catch (e) {
      return e.toString();
    }
  }
}
