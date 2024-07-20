import 'package:adhd/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GenderContainer extends StatelessWidget {
  const GenderContainer({super.key, required this.isMale});

  final bool isMale;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          //isMale = true;
        },
        child: Container(
          height: 190,
          width: 150,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: kMalecolor.withOpacity(0.25),
                spreadRadius: 0,
                blurRadius: 4,
                offset: const Offset(0, 4),
              ),
            ],
            borderRadius: BorderRadius.circular(25),
            color: isMale ? kMalecolor.withOpacity(0.5) : kWhitecolor_1,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Boy',
                style: GoogleFonts.kodchasan(
                    fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Image(
                image: AssetImage("assets/icons/male.png"),
                height: 125,
              )
            ],
          ),
        ),
      ),
    );
  }
}
