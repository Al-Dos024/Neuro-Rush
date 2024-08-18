import 'package:adhd/constants.dart';
import 'package:adhd/core/utils/assets.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/screens/def_the_kid.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'two_row_text.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({
    super.key,
    required this.attemptNum,
    required this.age,
    required this.testTime,
    required this.testDate,
    required this.average,
    required this.gender,
  });
  final int attemptNum;
  final int age;
  final int average;
  final String gender;
  final String testTime;
  final String testDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kBluecolor_5,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 21),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${S.of(context).Attempt_Number} $attemptNum",
                      style: GoogleFonts.kodchasan(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: kBluecolor_4,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TwoRowText(
                      name: S.of(context).Average,
                      value: "$average",
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TwoRowText(
                      name: S.of(context).Gender_Age,
                      value: "$gender $age",
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TwoRowText(
                      name: S.of(context).Test_Time,
                      value: testTime,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TwoRowText(
                      name: S.of(context).Date,
                      value: testDate,
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Flexible(
                    child: Image.asset(
                      AssetsData.prvtest,
                      height: 180,
                    ),
                  ),
                  IconButton(
                    alignment: Alignment.centerRight,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DefineTheKid()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(10),
                        backgroundColor: kWhitecolor),
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: kBluecolor_1,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
