// ignore_for_file: unused_local_variable

import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/send_data_to_firebase.dart';
import 'package:firebase_auth/firebase_auth.dart';

// ignore: non_constant_identifier_names
Future<void> logIn(String email, String password) async {
  UserCredential user = await FirebaseAuth.instance
      .signInWithEmailAndPassword(email: email, password: password);
}
