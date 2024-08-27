import 'package:adhd/constants.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/circle_row.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CircleRowAdult extends StatelessWidget {
  const CircleRowAdult({super.key, required this.score});

  final int score;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Circle(color: score > 0 ? const Color(0xff238800) : kGraycolor_3),
        Circle(color: (score >= 3) ? const Color(0xffDDBD9B) : kGraycolor_3),
        Circle(
            color: (score == 4 || score == 5)
                ? const Color(0xffBA0F13)
                : kGraycolor_3),
      ],
    );
  }
}

class TitleAdult extends StatelessWidget {
  const TitleAdult({super.key, required this.score});

  final int score;

  @override
  Widget build(BuildContext context) {
    return score == 1 || score == 2
        ? Text(
            S.of(context).Low,
            style: GoogleFonts.kodchasan(color: const Color(0xff238800)),
          )
        : score == 3
            ? Text(S.of(context).Medium,
                style: GoogleFonts.kodchasan(color: const Color(0xffDDBD9B)))
            : Text(S.of(context).high,
                style: GoogleFonts.kodchasan(color: const Color(0xffBA0F13)));
  }
}
