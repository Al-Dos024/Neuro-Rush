import 'package:adhd/constants.dart';
import 'package:adhd/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildPage({
  required Color color,
  required String urlImage,
  required String title,
  required String subtitle,
}) {
  bool isDarkMode = MyApp.themeNotifier.value == ThemeMode.dark;

  return Container(
    color: color,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          urlImage,
          fit: BoxFit.cover,
          width: 300,
        ),
        const SizedBox(
          height: 32,
        ),
        Text(
          title,
          style: GoogleFonts.kodchasan(
              fontSize: 24, fontWeight: FontWeight.bold, color: kBluecolor_7,),
        ),
        const SizedBox(
          height: 24,
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 10,
          ),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.kodchasan(
              color:isDarkMode? kWhitecolor: kBlackcolor_1,
              fontSize: 16,
            ),
          ),
        )
      ],
    ),
  );
}
