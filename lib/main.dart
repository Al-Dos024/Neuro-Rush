import 'package:adhd/features/main/screens/main_view.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/screens/def_the_kid.dart';
import 'package:adhd/features/what-is-ADHD/screens/what_is_adhd.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
          ),
        ),
        home: const DefineTheKid() //SigninView() ,
        );
  }
}
