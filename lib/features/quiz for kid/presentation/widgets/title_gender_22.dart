import 'package:adhd/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleGender22 extends StatelessWidget {
  const TitleGender22({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.kodchasan(
        fontSize: 22,
        color: kBluecolor_1,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
