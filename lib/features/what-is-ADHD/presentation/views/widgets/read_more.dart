
import 'package:adhd/constants.dart';
import 'package:adhd/features/what-is-ADHD/presentation/views/widgets/link_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReadMore extends StatelessWidget {
  const ReadMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "read more ? ",
          style: GoogleFonts.kodchasan(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: kBluecolor_1,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const LinkButton(
          urlLabel: "Attention deficit hyperactivity disorder - Wikipedia",
          url:
              "https://en.wikipedia.org/wiki/Attention_deficit_hyperactivity_disorder",
        ),
        const SizedBox(
          height: 10,
        ),
        const LinkButton(
          urlLabel: "Attention Deficit Hyperactivity Disorder (ADHD) - WedMD",
          url:
              "https://www.webmd.com/add-adhd/attention-deficit-hyperactivity-disorder-adhd",
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
