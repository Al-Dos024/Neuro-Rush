import 'package:adhd/constants.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetBackButton extends StatelessWidget {
  const GetBackButton({super.key, required this.onPressed});

  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: TextButton.icon(
          label: Text(
            S.of(context).back,
            style: GoogleFonts.kodchasan(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          iconAlignment: IconAlignment.start,
          icon: Container(
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  offset: Offset(0, 0),
                ),
              ],
              borderRadius: BorderRadius.circular(25),
            ),
            child: const CircleAvatar(
              backgroundColor: kQuizphase,
              child: Icon(
                fill: BorderSide.strokeAlignCenter,
                Icons.arrow_back,
                color: Colors.black,
                size: 27,
              ),
            ),
          ),
          onPressed: onPressed),
    );
  }
}
