import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class CustomHeadlineText extends StatelessWidget {
  const CustomHeadlineText(
      {super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.kodchasan(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.underline,
          ),
        ),
        Text(
          subTitle,
          maxLines: 20,
          style: GoogleFonts.kodchasan(
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
