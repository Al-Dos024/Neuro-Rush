import 'package:adhd/constants.dart';
import 'package:adhd/core/utils/assets.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/screens/def_the_kid.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCardMainView2 extends StatelessWidget {
  const CustomCardMainView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kKindtestcolor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: Image.asset(
                AssetsData.imageKidtest,
                height: 180,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).Kid_Test,
                    style: GoogleFonts.kodchasan(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: kWhitecolor,
                    ),
                  ),
                  Text(
                    "3 - 17",
                    style: GoogleFonts.kodchasan(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: kWhitecolor.withOpacity(0.6),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DefineTheKid()),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_forward,
                      size: 34,
                      color: kWhitecolor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
