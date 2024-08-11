
import 'package:adhd/constants.dart';
import 'package:adhd/features/what-is-ADHD/screens/what_is_adhd.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCardMainView1 extends StatelessWidget {
  const CustomCardMainView1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: kBluecolor_3,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const Flexible(
              flex: 1,
              child: Image(
                image: AssetImage("assets/img/more_adhd.png"),
                height: 180,
              ),
            ),
            Column(
              children: [
                Text(
                  "What is",
                  style: GoogleFonts.kodchasan(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: kWhitecolor,
                  ),
                ),
                Text(
                  "ADHD?",
                  style: GoogleFonts.kodchasan(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: kWhitecolor,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WhatIsAdhd(),
                      ),
                    );
                  },
                  child: Image.asset(
                    "assets/icons/video.png",
                    width: 40,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
