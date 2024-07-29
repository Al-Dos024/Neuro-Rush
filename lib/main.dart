import 'package:adhd/features/authorization/presentation/sign_in/screens/sign_in_view.dart';
import 'package:adhd/features/main/screens/main_view.dart';
import 'package:flutter/material.dart';
import 'features/quiz for kid/presentation/screens/def_the_kid.dart';

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
        home: SigninView()//DefineTheKid() // ,
        );
  }
}
