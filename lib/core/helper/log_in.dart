// ignore_for_file: unused_local_variable
import 'package:firebase_auth/firebase_auth.dart';

// ignore: non_constant_identifier_names
Future<void> logIn(String email, String password) async {
  UserCredential user = await FirebaseAuth.instance
      .signInWithEmailAndPassword(email: email, password: password);
}
