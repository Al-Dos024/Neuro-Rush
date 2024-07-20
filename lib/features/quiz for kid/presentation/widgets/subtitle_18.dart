import 'package:adhd/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Subtitle18 extends StatelessWidget {
  const Subtitle18({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          text,
          style: GoogleFonts.kodchasan(
            fontSize: 18,
            color: kPrimerycolor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
