import 'package:adhd/constants.dart';
import 'package:flutter/material.dart';

class CircleRow extends StatelessWidget {
  const CircleRow({super.key, required this.score});

  final int score;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Circle(color: score > 0 ? const Color(0xff328D12) : kGraycolor_3),
        Circle(color: (score >= 30) ? const Color(0xff48D21D) : kGraycolor_3),
        Circle(color: (score >= 35) ? const Color(0xff76E159) : kGraycolor_3),
        Circle(color: (score >= 40) ? const Color(0xffA4F095) : kGraycolor_3),
        Circle(color: (score >= 45) ? const Color(0xffDFFF1D) : kGraycolor_3),
        Circle(color: (score >= 56) ? const Color(0xffFBBAB7) : kGraycolor_3),
        Circle(color: (score >= 61) ? const Color(0xffF78381) : kGraycolor_3),
        Circle(color: (score >= 66) ? const Color(0xffF34C4B) : kGraycolor_3),
        Circle(color: score > 70 ? const Color(0xffBA0F13) : kGraycolor_3),
      ],
    );
  }
}

class Circle extends StatelessWidget {
  final Color color;

  const Circle({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3.2),
      width: 9.0,
      height: 9.0,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
