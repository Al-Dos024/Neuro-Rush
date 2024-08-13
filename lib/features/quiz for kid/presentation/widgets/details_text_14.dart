import 'package:adhd/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsText14 extends StatelessWidget {
  const DetailsText14({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.kodchasan(
        fontSize: 14,
        color: kGraycolor_1,
      ),
    );
  }
}
