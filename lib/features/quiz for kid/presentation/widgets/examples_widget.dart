import 'package:adhd/constants.dart';
import 'package:flutter/material.dart';

class ExamplesWidget extends StatelessWidget {
  const ExamplesWidget({super.key, required this.ex});

  final String ex;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 7.5),
          child: Container(
            width: 5,
            height: 5,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
        ),
        const SizedBox(
          width: 7,
        ),
        Flexible(
          child: Text(
            ex,
            style: CustomTextStyle.kodch12BM,
          ),
        ),
      ],
    );
  }
}
