import 'package:adhd/constants.dart';
import 'package:adhd/core/utils/font_style.dart';
import 'package:flutter/material.dart';

class GetNextButton extends StatelessWidget {
  const GetNextButton({super.key, required this.onPressed});

  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: TextButton.icon(
          // style: TextButton.styleFrom(
          //   backgroundColor: kBluecolor_1,
          // ),
          label: Text("Next", style: CustomTextStyle.kodch16BB),
          iconAlignment: IconAlignment.end,
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
                Icons.arrow_forward,
                color: Colors.black,
                size: 27,
              ),
            ),
          ),
          onPressed: onPressed),
    );
  }
}
