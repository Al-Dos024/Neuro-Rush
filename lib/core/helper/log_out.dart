import 'package:adhd/features/onborading/presentation/screens/onborading_view.dart';
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
      builder: (context) => const OnBoradingView(),
    ),
  );
}
