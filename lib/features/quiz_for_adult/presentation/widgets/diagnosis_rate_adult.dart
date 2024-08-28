import 'package:adhd/core/utils/font_style.dart';
import 'package:adhd/features/quiz_for_adult/presentation/widgets/circle_row.dart';
import 'package:flutter/material.dart';

class DiagnosisRate extends StatelessWidget {
  const DiagnosisRate(
      {super.key,
      required this.title,
      required this.score,
      required this.subtitle});

  final String title;
  final String subtitle;
  final int score;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20, top: 17),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: CustomTextStyle.kodch20BlB,
                ),
                const Spacer(),
                TitleAdult(
                  score: score,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 280,
                  child: Text(
                    subtitle,
                    style: CustomTextStyle.kodch14GM,
                  ),
                ),
                const Spacer(),
                CircleRowAdult(
                  score: score,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              indent: 20,
              endIndent: 20,
              color: Color(
                0xff126E82,
              ),
            )
          ],
        ),
      ),
    );
  }
}
