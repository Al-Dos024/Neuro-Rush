import 'package:adhd/constants.dart';
import 'package:adhd/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TwoRowText extends StatelessWidget {
  const TwoRowText({super.key, required this.name, required this.value});
  final String name;
  final String value;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyApp.themeNotifier.value == ThemeMode.dark;

    return Row(
      children: [
        Text(
          name,
          style: GoogleFonts.kodchasan(
            fontSize: 14,
            fontWeight: FontWeight.w500,
             color: isDarkMode ? kBluecolor_9 :kBluecolor_1,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          value,
          style: GoogleFonts.kodchasan(
            fontSize: 14,
            fontWeight: FontWeight.w600,
             color: isDarkMode ? kWhitecolor : kBluecolor_6,
          ),
        ),
      ],
    );
  }
}
