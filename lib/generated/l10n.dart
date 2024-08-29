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

  /// `Previous Results Kids`
  String get Previous_Results {
    return Intl.message(
      'Previous Results Kids',
      name: 'Previous_Results',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get Dark_Mode {
    return Intl.message(
      'Dark Mode',
      name: 'Dark_Mode',
      desc: '',
      args: [],
    );
  }

  /// `About Us`
  String get About_Us {
    return Intl.message(
      'About Us',
      name: 'About_Us',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get Language {
    return Intl.message(
      'Language',
      name: 'Language',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get Log_Out {
    return Intl.message(
      'Log Out',
      name: 'Log_Out',
      desc: '',
      args: [],
    );
  }

  /// ` Points`
  String get points {
    return Intl.message(
      ' Points',
      name: 'points',
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

  /// `Our app helps diagnose ADHD and offers comprehensive resources on ADHD topics, including symptoms, types, management strategies, and coping mechanisms.`
  String get aboutapp_desc {
    return Intl.message(
      'Our app helps diagnose ADHD and offers comprehensive resources on ADHD topics, including symptoms, types, management strategies, and coping mechanisms.',
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
      'Let`s get start?',
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
      'Let`s Start?',
      name: 'Lets_start_btn',
      desc: '',
      args: [],
    );
  }

  /// `Let's sign you up.`
  String get sign_up_title {
    return Intl.message(
      'Let`s sign you up.',
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

  /// `Unexpected Firebase Error`
  String get snackbar_firebase_sub {
    return Intl.message(
      'Unexpected Firebase Error',
      name: 'snackbar_firebase_sub',
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
      'Let`s sign you in',
      name: 'sign_you_title',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back, You've been missed`
  String get sign_you_subtitle {
    return Intl.message(
      'Welcome back, You`ve been missed',
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
      'don`t have an account?',
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

  /// `What is`
  String get What_is {
    return Intl.message(
      'What is',
      name: 'What_is',
      desc: '',
      args: [],
    );
  }

  /// `ADHD?`
  String get ADHD_ar {
    return Intl.message(
      'ADHD?',
      name: 'ADHD_ar',
      desc: '',
      args: [],
    );
  }

  /// `What is ADHD?`
  String get What_is_adhd_title {
    return Intl.message(
      'What is ADHD?',
      name: 'What_is_adhd_title',
      desc: '',
      args: [],
    );
  }

  /// `Kid Test`
  String get Kid_Test {
    return Intl.message(
      'Kid Test',
      name: 'Kid_Test',
      desc: '',
      args: [],
    );
  }

  /// `Adult Test`
  String get Adult_Test {
    return Intl.message(
      'Adult Test',
      name: 'Adult_Test',
      desc: '',
      args: [],
    );
  }

  /// `Introduction`
  String get Introduction_title {
    return Intl.message(
      'Introduction',
      name: 'Introduction_title',
      desc: '',
      args: [],
    );
  }

  /// `ADHD is a common neurodevelopmental disorder that starts in childhood and affects around 5% of the global population. Children with ADHD may struggle to follow instructions, control their actions, and integrate into school environments, leading to academic performance issues. Managing children with ADHD can be challenging for parents and teachers. It's important to provide children with love, support, and understanding, and to work with healthcare professionals and teachers to learn how to handle the child best.`
  String get Introduction_subtitle {
    return Intl.message(
      'ADHD is a common neurodevelopmental disorder that starts in childhood and affects around 5% of the global population. Children with ADHD may struggle to follow instructions, control their actions, and integrate into school environments, leading to academic performance issues. Managing children with ADHD can be challenging for parents and teachers. It`s important to provide children with love, support, and understanding, and to work with healthcare professionals and teachers to learn how to handle the child best.',
      name: 'Introduction_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Symptoms`
  String get Symptoms_title {
    return Intl.message(
      'Symptoms',
      name: 'Symptoms_title',
      desc: '',
      args: [],
    );
  }

  /// `Attention deficit hyperactivity disorder (ADHD) is characterized by inattention, hyperactivity, and impulsivity. The symptoms are challenging to define. They must be observed for at least six months in two different settings to diagnose ADHD.  When the symptoms are categorized in children, three subtypes emerge: predominantly inattention, predominantly hyperactivity-impulsivity, and combined inattention, hyperactivity, and impulsivity. Most people exhibit some of these behaviors, but not to the point where they significantly interfere with their work, relationships, or studies. Symptoms may persist into adulthood, but diagnosing ADHD in adults remains a clinical diagnosis. Symptoms may differ from childhood to adolescence due to adaptations and avoidance mechanisms acquired during socialization.`
  String get Symptoms_subtitle {
    return Intl.message(
      'Attention deficit hyperactivity disorder (ADHD) is characterized by inattention, hyperactivity, and impulsivity. The symptoms are challenging to define. They must be observed for at least six months in two different settings to diagnose ADHD.  When the symptoms are categorized in children, three subtypes emerge: predominantly inattention, predominantly hyperactivity-impulsivity, and combined inattention, hyperactivity, and impulsivity. Most people exhibit some of these behaviors, but not to the point where they significantly interfere with their work, relationships, or studies. Symptoms may persist into adulthood, but diagnosing ADHD in adults remains a clinical diagnosis. Symptoms may differ from childhood to adolescence due to adaptations and avoidance mechanisms acquired during socialization.',
      name: 'Symptoms_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Video explaining attention deficit`
  String get video_desc {
    return Intl.message(
      'Video explaining attention deficit',
      name: 'video_desc',
      desc: '',
      args: [],
    );
  }

  /// `hyperactivity disorder`
  String get video_und {
    return Intl.message(
      'hyperactivity disorder',
      name: 'video_und',
      desc: '',
      args: [],
    );
  }

  /// `Reasons`
  String get Reasons_title {
    return Intl.message(
      'Reasons',
      name: 'Reasons_title',
      desc: '',
      args: [],
    );
  }

  /// `There is no single cause for ADHD. However, there are a number of factors that may contribute to or worsen it, including genetics, diet, and physical and social environments.\n`
  String get Reasons_subtitle {
    return Intl.message(
      'There is no single cause for ADHD. However, there are a number of factors that may contribute to or worsen it, including genetics, diet, and physical and social environments.\n',
      name: 'Reasons_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Genetic factors`
  String get Genetic_factors_title {
    return Intl.message(
      'Genetic factors',
      name: 'Genetic_factors_title',
      desc: '',
      args: [],
    );
  }

  /// `ADHD is thought to be mainly hereditary, with genetic factors contributing to about 75% of cases. Several genes, including those affecting dopamine transporters, are believed to play a role in the disorder. ADHD is considered to be a complex interaction between genetic and environmental factors. One theory suggests that hyperactivity was an adaptive trait in early humans, with individuals with ADHD being more effective at tasks involving risk or competition in certain ancient societies.\n`
  String get Genetic_factors_subtitle {
    return Intl.message(
      'ADHD is thought to be mainly hereditary, with genetic factors contributing to about 75% of cases. Several genes, including those affecting dopamine transporters, are believed to play a role in the disorder. ADHD is considered to be a complex interaction between genetic and environmental factors. One theory suggests that hyperactivity was an adaptive trait in early humans, with individuals with ADHD being more effective at tasks involving risk or competition in certain ancient societies.\n',
      name: 'Genetic_factors_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Environmental factors`
  String get Environmental_factors_title {
    return Intl.message(
      'Environmental factors',
      name: 'Environmental_factors_title',
      desc: '',
      args: [],
    );
  }

  /// `Environmental factors play a significant role in ADHD development. Factors such as alcohol and tobacco exposure during pregnancy, lead exposure, premature birth, and infectious diseases increase the risk. Studies have linked the pesticide chlorpyrifos to ADHD symptoms in children. Higher pesticide exposure correlates with a 35% increased risk of ADHD, and even low levels of exposure can have an impact.\n`
  String get Environmental_factors_subtitle {
    return Intl.message(
      'Environmental factors play a significant role in ADHD development. Factors such as alcohol and tobacco exposure during pregnancy, lead exposure, premature birth, and infectious diseases increase the risk. Studies have linked the pesticide chlorpyrifos to ADHD symptoms in children. Higher pesticide exposure correlates with a 35% increased risk of ADHD, and even low levels of exposure can have an impact.\n',
      name: 'Environmental_factors_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Dietary systems`
  String get Dietary_systems_title {
    return Intl.message(
      'Dietary systems',
      name: 'Dietary_systems_title',
      desc: '',
      args: [],
    );
  }

  /// `A study by the University of Southampton linked children's consumption of certain artificial colors with hyperactivity, prompting action by the British government and the European Commission. In the United States, federal law requires food manufacturers to disclose the use of artificial colors on product packaging. This allows consumers to make informed choices about the products they purchase. The findings highlight the importance of continued vigilance in regulating artificial colors in food.\n`
  String get Dietary_systems_subtitle {
    return Intl.message(
      'A study by the University of Southampton linked children`s consumption of certain artificial colors with hyperactivity, prompting action by the British government and the European Commission. In the United States, federal law requires food manufacturers to disclose the use of artificial colors on product packaging. This allows consumers to make informed choices about the products they purchase. The findings highlight the importance of continued vigilance in regulating artificial colors in food.\n',
      name: 'Dietary_systems_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Pathophysiology`
  String get Pathophysiology_title {
    return Intl.message(
      'Pathophysiology',
      name: 'Pathophysiology_title',
      desc: '',
      args: [],
    );
  }

  /// `The pathophysiology of ADHD is complex and unclear. Research shows reduced brain volume in children with ADHD, particularly in the left prefrontal cortex, suggesting dysfunction in the frontal lobe.`
  String get Pathophysiology_subtitle_one {
    return Intl.message(
      'The pathophysiology of ADHD is complex and unclear. Research shows reduced brain volume in children with ADHD, particularly in the left prefrontal cortex, suggesting dysfunction in the frontal lobe.',
      name: 'Pathophysiology_subtitle_one',
      desc: '',
      args: [],
    );
  }

  /// `Neuroimaging studies are now only used for research purposes, not for diagnosis. A 2005 review identified four interconnected frontal brain regions implicated in ADHD: the lateral prefrontal cortex, the dorsal anterior cingulate cortex, the caudate nucleus, and the cortex.`
  String get Pathophysiology_subtitle_two {
    return Intl.message(
      'Neuroimaging studies are now only used for research purposes, not for diagnosis. A 2005 review identified four interconnected frontal brain regions implicated in ADHD: the lateral prefrontal cortex, the dorsal anterior cingulate cortex, the caudate nucleus, and the cortex.',
      name: 'Pathophysiology_subtitle_two',
      desc: '',
      args: [],
    );
  }

  /// `Please fill the information `
  String get enter_data_title {
    return Intl.message(
      'Please fill the information ',
      name: 'enter_data_title',
      desc: '',
      args: [],
    );
  }

  /// `this will help us increase the accuracy of the result`
  String get enter_data_subtitle {
    return Intl.message(
      'this will help us increase the accuracy of the result',
      name: 'enter_data_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Choose your kid gender :`
  String get enter_gender_title {
    return Intl.message(
      'Choose your kid gender :',
      name: 'enter_gender_title',
      desc: '',
      args: [],
    );
  }

  /// `Choose your kid age:`
  String get enter_age_subtitle {
    return Intl.message(
      'Choose your kid age:',
      name: 'enter_age_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Boy`
  String get boy {
    return Intl.message(
      'Boy',
      name: 'boy',
      desc: '',
      args: [],
    );
  }

  /// `Girl`
  String get girl {
    return Intl.message(
      'Girl',
      name: 'girl',
      desc: '',
      args: [],
    );
  }

  /// `Go to quiz phase`
  String get go_quiz_btn {
    return Intl.message(
      'Go to quiz phase',
      name: 'go_quiz_btn',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Quiz for Kid`
  String get quiz_for_kid {
    return Intl.message(
      'Quiz for Kid',
      name: 'quiz_for_kid',
      desc: '',
      args: [],
    );
  }

  /// `Quiz for Adult`
  String get quiz_for_adult {
    return Intl.message(
      'Quiz for Adult',
      name: 'quiz_for_adult',
      desc: '',
      args: [],
    );
  }

  /// `Opps`
  String get opps {
    return Intl.message(
      'Opps',
      name: 'opps',
      desc: '',
      args: [],
    );
  }

  /// `You can't get back anymore`
  String get back_btn_massge {
    return Intl.message(
      'You can`t get back anymore',
      name: 'back_btn_massge',
      desc: '',
      args: [],
    );
  }

  /// `You must select an answer`
  String get next_btn_massge {
    return Intl.message(
      'You must select an answer',
      name: 'next_btn_massge',
      desc: '',
      args: [],
    );
  }

  /// `  Answer :`
  String get answer {
    return Intl.message(
      '  Answer :',
      name: 'answer',
      desc: '',
      args: [],
    );
  }

  /// `Examples during adulthood: `
  String get Examples_quiz {
    return Intl.message(
      'Examples during adulthood: ',
      name: 'Examples_quiz',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to log out this account ?`
  String get logout {
    return Intl.message(
      'Are you sure you want to log out this account ?',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Opposition`
  String get Opposition {
    return Intl.message(
      'Opposition',
      name: 'Opposition',
      desc: '',
      args: [],
    );
  }

  /// `It involves breaking rules, problems with those around him.`
  String get Opposition_sub {
    return Intl.message(
      'It involves breaking rules, problems with those around him.',
      name: 'Opposition_sub',
      desc: '',
      args: [],
    );
  }

  /// `Cognitive problems`
  String get Cognitive_Problems {
    return Intl.message(
      'Cognitive problems',
      name: 'Cognitive_Problems',
      desc: '',
      args: [],
    );
  }

  /// `Indicates inattention, problems with organization, difficulty completing tasks`
  String get Cognitive_Problems_sub {
    return Intl.message(
      'Indicates inattention, problems with organization, difficulty completing tasks',
      name: 'Cognitive_Problems_sub',
      desc: '',
      args: [],
    );
  }

  /// `Hyperactivity`
  String get Hyperactivity {
    return Intl.message(
      'Hyperactivity',
      name: 'Hyperactivity',
      desc: '',
      args: [],
    );
  }

  /// `Inability to sit still for a period of time, feeling of discomfort and agitation`
  String get Hyperactivity_sub {
    return Intl.message(
      'Inability to sit still for a period of time, feeling of discomfort and agitation',
      name: 'Hyperactivity_sub',
      desc: '',
      args: [],
    );
  }

  /// `Anxiety and shyness`
  String get Anxiety_and_shyness {
    return Intl.message(
      'Anxiety and shyness',
      name: 'Anxiety_and_shyness',
      desc: '',
      args: [],
    );
  }

  /// `anxiety and fears, shy, withdrawn.`
  String get Anxiety_and_shyness_sub {
    return Intl.message(
      'anxiety and fears, shy, withdrawn.',
      name: 'Anxiety_and_shyness_sub',
      desc: '',
      args: [],
    );
  }

  /// `Perfectionism`
  String get Perfectionism {
    return Intl.message(
      'Perfectionism',
      name: 'Perfectionism',
      desc: '',
      args: [],
    );
  }

  /// `Goals higher than their capabilities, obsessive at work, highly sensitive`
  String get Perfectionism_sub {
    return Intl.message(
      'Goals higher than their capabilities, obsessive at work, highly sensitive',
      name: 'Perfectionism_sub',
      desc: '',
      args: [],
    );
  }

  /// `Social problems`
  String get Social_problems {
    return Intl.message(
      'Social problems',
      name: 'Social_problems',
      desc: '',
      args: [],
    );
  }

  /// `Low self-confidence, low self-esteem, lack of friends`
  String get Social_problems_sub {
    return Intl.message(
      'Low self-confidence, low self-esteem, lack of friends',
      name: 'Social_problems_sub',
      desc: '',
      args: [],
    );
  }

  /// `Psychosomatic diseases`
  String get Psychosomatic_diseases {
    return Intl.message(
      'Psychosomatic diseases',
      name: 'Psychosomatic_diseases',
      desc: '',
      args: [],
    );
  }

  /// `Pretends to be sick, but he is not.`
  String get Psychosomatic_diseases_sub {
    return Intl.message(
      'Pretends to be sick, but he is not.',
      name: 'Psychosomatic_diseases_sub',
      desc: '',
      args: [],
    );
  }

  /// `Attention deficit`
  String get Attention_deficit {
    return Intl.message(
      'Attention deficit',
      name: 'Attention_deficit',
      desc: '',
      args: [],
    );
  }

  /// `Difficulty in sustaining focus and concentration.`
  String get Attention_deficit_sub {
    return Intl.message(
      'Difficulty in sustaining focus and concentration.',
      name: 'Attention_deficit_sub',
      desc: '',
      args: [],
    );
  }

  /// `Arousal and impulsivity`
  String get Arousal_and_impulsivity {
    return Intl.message(
      'Arousal and impulsivity',
      name: 'Arousal_and_impulsivity',
      desc: '',
      args: [],
    );
  }

  /// `Arousal is heightened activity, impulsivity is acting without thinking.`
  String get Arousal_and_impulsivity_sub {
    return Intl.message(
      'Arousal is heightened activity, impulsivity is acting without thinking.',
      name: 'Arousal_and_impulsivity_sub',
      desc: '',
      args: [],
    );
  }

  /// `Passion`
  String get Passion {
    return Intl.message(
      'Passion',
      name: 'Passion',
      desc: '',
      args: [],
    );
  }

  /// `intense enthusiasm or strong emotion for something.`
  String get Passion_sub {
    return Intl.message(
      'intense enthusiasm or strong emotion for something.',
      name: 'Passion_sub',
      desc: '',
      args: [],
    );
  }

  /// `General indicator`
  String get General_indicator {
    return Intl.message(
      'General indicator',
      name: 'General_indicator',
      desc: '',
      args: [],
    );
  }

  /// `Persistent inattention, hyperactivity, and impulsivity that interferes with daily functioning.`
  String get General_indicator_sub {
    return Intl.message(
      'Persistent inattention, hyperactivity, and impulsivity that interferes with daily functioning.',
      name: 'General_indicator_sub',
      desc: '',
      args: [],
    );
  }

  /// `DMS 5`
  String get DMS_5 {
    return Intl.message(
      'DMS 5',
      name: 'DMS_5',
      desc: '',
      args: [],
    );
  }

  /// `Diagnostic and Statistical Manual of Mental Disorders, 5th Edition`
  String get DMS_5_sub {
    return Intl.message(
      'Diagnostic and Statistical Manual of Mental Disorders, 5th Edition',
      name: 'DMS_5_sub',
      desc: '',
      args: [],
    );
  }

  /// `Hyperactivity DMS 5`
  String get Hyperactivity_DMS_5 {
    return Intl.message(
      'Hyperactivity DMS 5',
      name: 'Hyperactivity_DMS_5',
      desc: '',
      args: [],
    );
  }

  /// `Diagnostic criteria for hyperactivity-impulsivity in the fifth edition.`
  String get Hyperactivity_DMS_5_sub {
    return Intl.message(
      'Diagnostic criteria for hyperactivity-impulsivity in the fifth edition.',
      name: 'Hyperactivity_DMS_5_sub',
      desc: '',
      args: [],
    );
  }

  /// `Mixed DMS 5`
  String get Mixed_DMS_5 {
    return Intl.message(
      'Mixed DMS 5',
      name: 'Mixed_DMS_5',
      desc: '',
      args: [],
    );
  }

  /// `Overall diagnostic criteria for ADHD`
  String get Mixed_DMS_5_sub {
    return Intl.message(
      'Overall diagnostic criteria for ADHD',
      name: 'Mixed_DMS_5_sub',
      desc: '',
      args: [],
    );
  }

  /// `More Details`
  String get More_Details {
    return Intl.message(
      'More Details',
      name: 'More_Details',
      desc: '',
      args: [],
    );
  }

  /// `Very much below average`
  String get vba {
    return Intl.message(
      'Very much below average',
      name: 'vba',
      desc: '',
      args: [],
    );
  }

  /// `Significantly below average`
  String get sba {
    return Intl.message(
      'Significantly below average',
      name: 'sba',
      desc: '',
      args: [],
    );
  }

  /// `Below average`
  String get ba {
    return Intl.message(
      'Below average',
      name: 'ba',
      desc: '',
      args: [],
    );
  }

  /// `Medium`
  String get m {
    return Intl.message(
      'Medium',
      name: 'm',
      desc: '',
      args: [],
    );
  }

  /// `Above average`
  String get aa {
    return Intl.message(
      'Above average',
      name: 'aa',
      desc: '',
      args: [],
    );
  }

  /// `Significantly above average`
  String get saa {
    return Intl.message(
      'Significantly above average',
      name: 'saa',
      desc: '',
      args: [],
    );
  }

  /// `Very much above average`
  String get vaa {
    return Intl.message(
      'Very much above average',
      name: 'vaa',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Result of Test`
  String get Result_of_Test {
    return Intl.message(
      'Result of Test',
      name: 'Result_of_Test',
      desc: '',
      args: [],
    );
  }

  /// `Attempt Number`
  String get Attempt_Number {
    return Intl.message(
      'Attempt Number',
      name: 'Attempt_Number',
      desc: '',
      args: [],
    );
  }

  /// `Average:`
  String get Average {
    return Intl.message(
      'Average:',
      name: 'Average',
      desc: '',
      args: [],
    );
  }

  /// `Gender/Age:`
  String get Gender_Age {
    return Intl.message(
      'Gender/Age:',
      name: 'Gender_Age',
      desc: '',
      args: [],
    );
  }

  /// `Test Time:`
  String get Test_Time {
    return Intl.message(
      'Test Time:',
      name: 'Test_Time',
      desc: '',
      args: [],
    );
  }

  /// `Date:`
  String get Date {
    return Intl.message(
      'Date:',
      name: 'Date',
      desc: '',
      args: [],
    );
  }

  /// `Previous Results Main`
  String get Previous_Results_main {
    return Intl.message(
      'Previous Results Main',
      name: 'Previous_Results_main',
      desc: '',
      args: [],
    );
  }

  /// `ADHD Screening Summary`
  String get overall_title {
    return Intl.message(
      'ADHD Screening Summary',
      name: 'overall_title',
      desc: '',
      args: [],
    );
  }

  /// `Your Part A score indicates that you may have significant ADHD symptoms. This doesn't confirm an ADHD diagnosis but suggests that further evaluation by a healthcare professional might be beneficial.`
  String get overall_subtitle {
    return Intl.message(
      'Your Part A score indicates that you may have significant ADHD symptoms. This doesn`t confirm an ADHD diagnosis but suggests that further evaluation by a healthcare professional might be beneficial.',
      name: 'overall_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Detailed Analysis`
  String get Detailed_title {
    return Intl.message(
      'Detailed Analysis',
      name: 'Detailed_title',
      desc: '',
      args: [],
    );
  }

  /// `A high score in both Part A and Part B further suggests the presence of ADHD. Part B highlights specific challenges in areas like task management, impulse control, and focus, which are often associated with ADHD.`
  String get Detailed_subtitle {
    return Intl.message(
      'A high score in both Part A and Part B further suggests the presence of ADHD. Part B highlights specific challenges in areas like task management, impulse control, and focus, which are often associated with ADHD.',
      name: 'Detailed_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Low`
  String get Low {
    return Intl.message(
      'Low',
      name: 'Low',
      desc: '',
      args: [],
    );
  }

  /// `Medium`
  String get Medium {
    return Intl.message(
      'Medium',
      name: 'Medium',
      desc: '',
      args: [],
    );
  }

  /// `High`
  String get high {
    return Intl.message(
      'High',
      name: 'high',
      desc: '',
      args: [],
    );
  }

  /// `Sorry`
  String get next_ver_title {
    return Intl.message(
      'Sorry',
      name: 'next_ver_title',
      desc: '',
      args: [],
    );
  }

  /// `This feature would be added next version`
  String get next_ver_subtitle {
    return Intl.message(
      'This feature would be added next version',
      name: 'next_ver_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `User Not Found`
  String get user_not_found {
    return Intl.message(
      'User Not Found',
      name: 'user_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Email`
  String get invalid_email {
    return Intl.message(
      'Invalid Email',
      name: 'invalid_email',
      desc: '',
      args: [],
    );
  }

  /// `Network Request Failed`
  String get network_request_failed {
    return Intl.message(
      'Network Request Failed',
      name: 'network_request_failed',
      desc: '',
      args: [],
    );
  }

  /// `Wrong Password`
  String get wrong_password {
    return Intl.message(
      'Wrong Password',
      name: 'wrong_password',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong`
  String get something_went_wrong {
    return Intl.message(
      'Something went wrong',
      name: 'something_went_wrong',
      desc: '',
      args: [],
    );
  }

  /// `Login Failed`
  String get login_failed {
    return Intl.message(
      'Login Failed',
      name: 'login_failed',
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
