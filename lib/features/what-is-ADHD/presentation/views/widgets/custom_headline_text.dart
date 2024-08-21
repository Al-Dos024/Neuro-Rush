import 'package:adhd/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constants.dart';

class CustomHeadlineText extends StatelessWidget {
  const CustomHeadlineText(
      {super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyApp.themeNotifier.value == ThemeMode.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.kodchasan(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: isDarkMode ? kBluecolor_7 : kBluecolor_4,
            decoration: TextDecoration.underline,
            decorationColor:  isDarkMode ? kBluecolor_7 : kBluecolor_4,
          ),
        ),
        Text(
          subTitle,
          maxLines: 20,
          style: GoogleFonts.kodchasan(
            fontSize: 13,
            color: isDarkMode ? kBluecolor_7 : kBluecolor_4,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
