
import 'package:adhd/features/what-is-ADHD/screens/what_is_adhd.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
          color: Colors.amber,
        ),),
        home:const WhatIsAdhd() //SigninView() ,
        );
  }
}
