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
        Circle(color: score > 0 ? const Color(0xff238800) : kGraycolor_3),
        Circle(color: (score >= 30) ? const Color(0xff49E718) : kGraycolor_3),
        Circle(color: (score >= 35) ? const Color(0xff76E159) : kGraycolor_3),
        Circle(color: (score >= 45) ? const Color(0xffDDBD9B) : kGraycolor_3),
        Circle(color: (score >= 61) ? const Color(0xffFF8A8A) : kGraycolor_3),
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
      margin: const EdgeInsets.all(3.5),
      width: 10.0,
      height: 10.0,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
