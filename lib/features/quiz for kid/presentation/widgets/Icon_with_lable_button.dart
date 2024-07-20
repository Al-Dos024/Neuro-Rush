import 'package:adhd/constants.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/screens/kid.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IconWithLableButton extends StatelessWidget {
  const IconWithLableButton(
      {super.key, required this.isMale, required this.age});
  final bool isMale;
  final int age;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: TextButton.icon(
        style: TextButton.styleFrom(
          backgroundColor: kBluecolor_1,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QuizForKids(
                isMale: isMale,
                age: age,
              ),
            ),
          );
        },
        label: Text(
          "Go to quiz phase",
          style: GoogleFonts.kodchasan(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
        iconAlignment: IconAlignment.end,
        icon: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
          size: 14,
        ),
      ),
    );
  }
}
