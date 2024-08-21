import 'package:adhd/constants.dart';
import 'package:adhd/core/utils/assets.dart';
import 'package:adhd/features/what-is-ADHD/presentation/views/what_is_adhd.dart';
import 'package:adhd/generated/l10n.dart';
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
                image: AssetImage(AssetsData.imageWhatAdhd),
                height: 180,
              ),
            ),
            Column(
              children: [
                Text(
                  S.of(context).What_is,
                  style: GoogleFonts.kodchasan(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    //color: kWhitecolor,
                  ),
                ),
                Text(
                  S.of(context).ADHD_ar,
                  style: GoogleFonts.kodchasan(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    //color: kWhitecolor,
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
                  child: const Icon(
                    Icons.play_circle_outline_outlined,
                    weight: 40,
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
