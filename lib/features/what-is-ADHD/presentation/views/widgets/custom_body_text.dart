import 'package:adhd/constants.dart';
import 'package:adhd/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBodyText extends StatelessWidget {
  const CustomBodyText(
      {super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyApp.themeNotifier.value == ThemeMode.dark;
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 9,
              width: 9,
              decoration: BoxDecoration(
                color: isDarkMode ? kBluecolor_7 : kBluecolor_4,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                title,
                style: GoogleFonts.kodchasan(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: isDarkMode ? kBluecolor_7 : kBluecolor_4,
                ),
              ),
            ),
          ],
        ),
        Text(
          subTitle,
          style: GoogleFonts.kodchasan(
            color: isDarkMode ? kBluecolor_2 : kBluecolor_1,
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
