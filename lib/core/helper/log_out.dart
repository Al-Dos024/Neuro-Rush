import 'package:adhd/features/onborading/presentation/screens/onborading_view.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/send_data_to_firebase.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future<void> logOut(BuildContext context) async {
  FirebaseAuth.instance.signOut();
  if (!context.mounted) return;
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => const OnBoradingView(),
    ),
  );
}
