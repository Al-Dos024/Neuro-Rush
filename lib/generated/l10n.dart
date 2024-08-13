// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome aboard`
  String get title {
    return Intl.message(
      'Welcome aboard',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Previous Results`
  String get Previous_Results {
    return Intl.message(
      'Previous Results',
      name: 'Previous_Results',
      desc: '',
      args: [],
    );
  }

  /// `Welcome aboard`
  String get Dark_Mode {
    return Intl.message(
      'Welcome aboard',
      name: 'Dark_Mode',
      desc: '',
      args: [],
    );
  }

  /// `About Application`
  String get aboutapp {
    return Intl.message(
      'About Application',
      name: 'aboutapp',
      desc: '',
      args: [],
    );
  }

  /// `It is an application designed to empower individuals and families affected by ADHD, as it combines three main functions: first, diagnosing ADHD. Second, resources on ADHD Topics such as symptoms, types, management strategies, and coping mechanisms can help users better understand themselves and their experiences.`
  String get aboutapp_desc {
    return Intl.message(
      'It is an application designed to empower individuals and families affected by ADHD, as it combines three main functions: first, diagnosing ADHD. Second, resources on ADHD Topics such as symptoms, types, management strategies, and coping mechanisms can help users better understand themselves and their experiences.',
      name: 'aboutapp_desc',
      desc: '',
      args: [],
    );
  }

  /// `What does the app do?`
  String get Whatappdo {
    return Intl.message(
      'What does the app do?',
      name: 'Whatappdo',
      desc: '',
      args: [],
    );
  }

  /// `Third, behavioral therapy tools: The app provides access to evidence-based exercises and techniques to help users manage symptoms, develop life skills, and stimulate and promote positive behaviors`
  String get Whatappdo_desc {
    return Intl.message(
      'Third, behavioral therapy tools: The app provides access to evidence-based exercises and techniques to help users manage symptoms, develop life skills, and stimulate and promote positive behaviors',
      name: 'Whatappdo_desc',
      desc: '',
      args: [],
    );
  }

  /// `Let's get start?`
  String get letsstart {
    return Intl.message(
      'Let\'s get start?',
      name: 'letsstart',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get Skip_btn {
    return Intl.message(
      'Skip',
      name: 'Skip_btn',
      desc: '',
      args: [],
    );
  }

  /// `Let's Start?`
  String get Lets_start_btn {
    return Intl.message(
      'Let\'s Start?',
      name: 'Lets_start_btn',
      desc: '',
      args: [],
    );
  }

  /// `Let's sign you up.`
  String get sign_up_title {
    return Intl.message(
      'Let\'s sign you up.',
      name: 'sign_up_title',
      desc: '',
      args: [],
    );
  }

  /// `Be with our family`
  String get sign_up_subtitle {
    return Intl.message(
      'Be with our family',
      name: 'sign_up_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get Name {
    return Intl.message(
      'Name',
      name: 'Name',
      desc: '',
      args: [],
    );
  }

  /// `Enter your name`
  String get Enter_name {
    return Intl.message(
      'Enter your name',
      name: 'Enter_name',
      desc: '',
      args: [],
    );
  }

  /// `Please enter name`
  String get no_name {
    return Intl.message(
      'Please enter name',
      name: 'no_name',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get Age {
    return Intl.message(
      'Age',
      name: 'Age',
      desc: '',
      args: [],
    );
  }

  /// `Enter your Age`
  String get Enter_Age {
    return Intl.message(
      'Enter your Age',
      name: 'Enter_Age',
      desc: '',
      args: [],
    );
  }

  /// `Please enter Age`
  String get no_Age {
    return Intl.message(
      'Please enter Age',
      name: 'no_Age',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Enter your Email`
  String get Enter_Email {
    return Intl.message(
      'Enter your Email',
      name: 'Enter_Email',
      desc: '',
      args: [],
    );
  }

  /// `Please enter Email`
  String get no_Email {
    return Intl.message(
      'Please enter Email',
      name: 'no_Email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get Password {
    return Intl.message(
      'Password',
      name: 'Password',
      desc: '',
      args: [],
    );
  }

  /// `Enter your Password`
  String get Enter_Password {
    return Intl.message(
      'Enter your Password',
      name: 'Enter_Password',
      desc: '',
      args: [],
    );
  }

  /// `Please enter Password`
  String get no_Password {
    return Intl.message(
      'Please enter Password',
      name: 'no_Password',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to our family`
  String get snackbar_suc {
    return Intl.message(
      'Welcome to our family',
      name: 'snackbar_suc',
      desc: '',
      args: [],
    );
  }

  /// `Signing up Successfully !`
  String get snackbar_suc_sub {
    return Intl.message(
      'Signing up Successfully !',
      name: 'snackbar_suc_sub',
      desc: '',
      args: [],
    );
  }

  /// `Yay!`
  String get snackbar_suc_log {
    return Intl.message(
      'Yay!',
      name: 'snackbar_suc_log',
      desc: '',
      args: [],
    );
  }

  /// `Signing in Successfully !`
  String get snackbar_suc_log_sub {
    return Intl.message(
      'Signing in Successfully !',
      name: 'snackbar_suc_log_sub',
      desc: '',
      args: [],
    );
  }

  /// `Error!`
  String get snackbar_weak {
    return Intl.message(
      'Error!',
      name: 'snackbar_weak',
      desc: '',
      args: [],
    );
  }

  /// `Password should be at least 6 characters`
  String get snackbar_weak_sub {
    return Intl.message(
      'Password should be at least 6 characters',
      name: 'snackbar_weak_sub',
      desc: '',
      args: [],
    );
  }

  /// `The email address is badly formatted.`
  String get snackbar_inv_sub {
    return Intl.message(
      'The email address is badly formatted.',
      name: 'snackbar_inv_sub',
      desc: '',
      args: [],
    );
  }

  /// `email already in use`
  String get snackbar_use_sub {
    return Intl.message(
      'email already in use',
      name: 'snackbar_use_sub',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection`
  String get snackbar_fail_sub {
    return Intl.message(
      'No internet connection',
      name: 'snackbar_fail_sub',
      desc: '',
      args: [],
    );
  }

  /// `An undefined Error happened.`
  String get snackbar_else_sub {
    return Intl.message(
      'An undefined Error happened.',
      name: 'snackbar_else_sub',
      desc: '',
      args: [],
    );
  }

  /// `Unexpected error`
  String get snackbar_used_sub {
    return Intl.message(
      'Unexpected error',
      name: 'snackbar_used_sub',
      desc: '',
      args: [],
    );
  }

  /// `User not found`
  String get snackbar_no_sub {
    return Intl.message(
      'User not found',
      name: 'snackbar_no_sub',
      desc: '',
      args: [],
    );
  }

  /// `wrong password`
  String get snackbar_inv_pass_sub {
    return Intl.message(
      'wrong password',
      name: 'snackbar_inv_pass_sub',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email or pssword`
  String get snackbar_inv_email_sub {
    return Intl.message(
      'Invalid email or pssword',
      name: 'snackbar_inv_email_sub',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get Register {
    return Intl.message(
      'Register',
      name: 'Register',
      desc: '',
      args: [],
    );
  }

  /// `have an account ?`
  String get have_account {
    return Intl.message(
      'have an account ?',
      name: 'have_account',
      desc: '',
      args: [],
    );
  }

  /// ` Login now`
  String get login_now {
    return Intl.message(
      ' Login now',
      name: 'login_now',
      desc: '',
      args: [],
    );
  }

  /// `Let's sign you in`
  String get sign_you_title {
    return Intl.message(
      'Let\'s sign you in',
      name: 'sign_you_title',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back, You've been missed`
  String get sign_you_subtitle {
    return Intl.message(
      'Welcome back, You\'ve been missed',
      name: 'sign_you_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get Forgot_Password {
    return Intl.message(
      'Forgot Password?',
      name: 'Forgot_Password',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get Log_in {
    return Intl.message(
      'Log in',
      name: 'Log_in',
      desc: '',
      args: [],
    );
  }

  /// `don't have an account?`
  String get dont_account {
    return Intl.message(
      'don\'t have an account?',
      name: 'dont_account',
      desc: '',
      args: [],
    );
  }

  /// ` Register now`
  String get Register_now {
    return Intl.message(
      ' Register now',
      name: 'Register_now',
      desc: '',
      args: [],
    );
  }

  /// `or continue with`
  String get continue_with {
    return Intl.message(
      'or continue with',
      name: 'continue_with',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
