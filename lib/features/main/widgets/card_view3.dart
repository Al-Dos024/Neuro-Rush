
import 'package:adhd/constants.dart';
import 'package:adhd/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCardMainView3 extends StatelessWidget {
  const CustomCardMainView3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kAdulttestcolor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Adult Test",
                    style: GoogleFonts.kodchasan(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: kWhitecolor,
                    ),
                  ),
                  Text(
                    "18 - 40",
                    style: GoogleFonts.kodchasan(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: kWhitecolor.withOpacity(0.6),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward,
                    size: 34,
                    color: kWhitecolor,
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Flexible(
              flex: 1,
              child: Image.asset(
                AssetsData.imageAdulttest,
                height: 180,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
