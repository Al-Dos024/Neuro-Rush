import 'package:adhd/constants.dart';
import 'package:flutter/material.dart';

class CustomFloatingactionButton extends StatelessWidget {
  const CustomFloatingactionButton({super.key, required this.age});

  final int age;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(),
      heroTag: "btn1",
      backgroundColor: kGraycolor_2,
      onPressed: () {},
      mini: true,
      child: const Icon(
        Icons.add,
      ),
    );
  }
}
