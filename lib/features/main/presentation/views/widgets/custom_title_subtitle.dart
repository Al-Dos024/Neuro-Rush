
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constants.dart';

class CustomTitleSubTitle extends StatelessWidget {
  const CustomTitleSubTitle(
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
            decoration: TextDecoration.underline,
            decorationColor: kWhitecolor,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: kWhitecolor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          subTitle,
          style: GoogleFonts.kodchasan(
            decorationColor: kWhitecolor,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: kWhitecolor,
          ),
        ),
      ],
    );
  }
}
