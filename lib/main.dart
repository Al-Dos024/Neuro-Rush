import 'package:adhd/features/authorization/presentation/sign_in/screens/sign_in_view.dart';
import 'package:adhd/features/authorization/presentation/sign_up/screens/sign_up_view.dart';
import 'package:adhd/features/main/screens/main_view.dart';
import 'package:adhd/helper/log_in.dart';
// import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
      // DevicePreview(
      //   enabled: true,
      //   builder: (context) => const MyApp(),
      // ),
      const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        // locale: DevicePreview.locale(context),
        // builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        home: SigninView() // const DefineTheKid() //SigninView() ,
        );
  }
}
