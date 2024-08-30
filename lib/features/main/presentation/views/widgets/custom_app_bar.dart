import 'package:adhd/constants.dart';
import 'package:adhd/features/main/presentation/views/widgets/custom_leading.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 98,
      color: kBluecolor_1,
      child: const CustomLeading(),
    );
  }
}
