import 'package:adhd/constants.dart';
import 'package:adhd/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExamplesWidget extends StatelessWidget {
  const ExamplesWidget({super.key, required this.ex});

  final String ex;
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyApp.themeNotifier.value == ThemeMode.dark;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 7.5),
          child: Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(
              color: isDarkMode ? kWhitecolor : kBlackcolor,
              shape: BoxShape.circle,
            ),
          ),
        ),
        const SizedBox(
          width: 7,
        ),
        Flexible(
          child: Text(
            ex,
            style: GoogleFonts.kodchasan(
              fontSize: 12,
              color: isDarkMode ? kWhitecolor_2 : kBlackcolor_2,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
