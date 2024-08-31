import 'package:adhd/features/authorization/presentation/views/sign_in_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future<void> logOut(BuildContext context) async {
  FirebaseAuth.instance.signOut();
  Navigator.pop(
    context,
  );
  if (!context.mounted) return;
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => SigninView(),
    ),
  );
}
