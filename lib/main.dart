import 'package:adhd/constants.dart';
import 'package:adhd/features/Splash/presentation/views/splash_view.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

var myColorScheme = ColorScheme.fromSeed(
  seedColor: const Color(0xff126E82),
);
var myDarkColorScheme = ColorScheme.fromSeed(
  seedColor: const Color(0xff126E82),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);

  // ValueNotifier for Locale
  static final ValueNotifier<Locale> localeNotifier =
      ValueNotifier(const Locale('en'));

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: themeNotifier,
      builder: (_, ThemeMode currentMode, __) {
        print(themeNotifier.value);
        return ValueListenableBuilder(
          valueListenable: localeNotifier,
          builder: (_, Locale currentLocale, __) {
            return MaterialApp(
              // localization
              locale: currentLocale,
              debugShowCheckedModeBanner: false,
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              home: const SplashView(),
              // dark theme
              theme: ThemeData().copyWith(
                colorScheme: myColorScheme,
              ),
              darkTheme: ThemeData.dark().copyWith(
                textTheme: const TextTheme(
                  bodyMedium: TextStyle(color: kBlackcolor)
                ),
                colorScheme: myDarkColorScheme,
                scaffoldBackgroundColor: const Color(0xff22282A),
                drawerTheme: const DrawerThemeData().copyWith(
                  backgroundColor: myDarkColorScheme.onSurface,
                ),
              ),
              themeMode: currentMode, // const DefineTheKid() //SigninView() ,
            );
          },
        );
      },
    );
  }
}

// Function to change the language
void changeLanguage(Locale newLocale) {
  MyApp.localeNotifier.value = newLocale;
}
