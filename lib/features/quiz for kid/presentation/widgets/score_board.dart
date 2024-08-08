import 'package:adhd/constants.dart';
import 'package:adhd/core/utils/font_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScoreBoard extends StatelessWidget {
  const ScoreBoard(
      {super.key,
      required this.currentQuestionIndex,
      required this.questionList});

  final int currentQuestionIndex;
  final List questionList;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            width: 80,
            height: 80,
            alignment: Alignment.center,
            child: Image.asset('assets/icons/slash.png')),
        Container(
          width: 80,
          height: 80,
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.all(10),
          child: Text(
            '${currentQuestionIndex + 1}',
            style: GoogleFonts.kodchasan(
                fontSize: 22, color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          width: 80,
          height: 80,
          alignment: Alignment.bottomRight,
          padding: const EdgeInsets.all(15),
          child: Text(questionList.length.toString(),
              style: CustomTextStyle.kodch16GM),
        ),
      ],
    );
  }
}
