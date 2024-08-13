import 'package:adhd/features/Splash/presentation/views/splash_view.dart';
import 'package:adhd/features/onborading/presentation/screens/onborading_view.dart';
import 'package:adhd/generated/l10n.dart';
// import 'package:adhd/features/authorization/presentation/sign_in/screens/sign_in_view.dart';
// import 'package:adhd/features/authorization/presentation/sign_up/screens/sign_up_view.dart';
// import 'package:adhd/features/main/screens/main_view.dart';
// import 'package:adhd/core/helper/log_in.dart';
// import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
    return MaterialApp(
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      locale: const Locale('ar'),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,

      home: const OnBoradingView(),
      // home: SplashView() // const DefineTheKid() //SigninView() ,
    );
  }
}




// class MyHomePage extends StatelessWidget {
//   final VoidCallback switchLanguage;

//   MyHomePage({required this.switchLanguage});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(AppLocalizations.of(context)!.title),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: switchLanguage,
//           child: Text(AppLocalizations.of(context)!.switchLanguageButton),
//         ),
//       ),
//     );
//   }
// }