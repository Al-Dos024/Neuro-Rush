import 'package:adhd/constants.dart';
import 'package:adhd/features/authorization/presentation/sign_in/screens/sign_in_view.dart';
import 'package:adhd/features/main/screens/main_view.dart';
import 'package:adhd/features/onborading/presentation/screens/onborading_view.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/screens/def_the_kid.dart';
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
          )),
      home: const MainView() //DefineTheKid(),
    );
  }
}
