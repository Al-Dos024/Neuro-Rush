import 'package:flutter/material.dart';

class CircleRow extends StatelessWidget {
  const CircleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Circle(color: Color(0xff328D12)),
        Circle(color: Color(0xff48D21D)),
        Circle(color: Color(0xff76E159)),
        Circle(color: Color(0xffA4F095)),
        Circle(color: Color(0xffDFFF1D)),
        Circle(color: Color(0xffFBBAB7)),
        Circle(color: Color(0xffF78381)),
        Circle(color: Color(0xffF34C4B)),
        Circle(color: Color(0xffBA0F13)),
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
