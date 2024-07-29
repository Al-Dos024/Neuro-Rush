import 'package:adhd/constants.dart';
import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      padding: EdgeInsets.zero,
      backgroundColor: kBluecolor_2,
      behavior: SnackBarBehavior.floating,
      content: Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [kBluecolor_1, kBluecolor_2]),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text("Opps!", style: CustomTextStyle.kodch18WB),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(message, style: CustomTextStyle.kodch14WM),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
