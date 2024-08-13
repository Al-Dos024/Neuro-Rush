import 'package:adhd/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBodyText extends StatelessWidget {
  const CustomBodyText({super.key, required this.title, required this.subTitle});
  final String title ;
  final String subTitle ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 9,
              width: 9,
              decoration: BoxDecoration(
                color: kBluecolor_4,
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
                ),
              ),
            ),
          ],
        ),
        Text(
          subTitle,
          style: GoogleFonts.kodchasan(
            
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
