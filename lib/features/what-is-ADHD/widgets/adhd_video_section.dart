
import 'package:adhd/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdhdVideoSection extends StatelessWidget {
  const AdhdVideoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/img/World health day.png"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: Text(
            "Video explaining attention deficit hyperactivity disorder",
            maxLines: 2,
            textAlign: TextAlign.center,
            style: GoogleFonts.kodchasan(
              fontSize: 11,
              color: kBluecolor_4,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    );
  }
}
