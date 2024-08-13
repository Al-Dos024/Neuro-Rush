import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    Key? key,
    required this.slidingAnimation,
  }) : super(key: key);

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: Text(
              // 'Gojo Satoru',
              "Neuro Rush",
              style: GoogleFonts.neucha(
                color: Color(0xffB8DFF2),
                fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
