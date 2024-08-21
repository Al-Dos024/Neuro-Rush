import 'package:adhd/core/utils/font_style.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'circle_row.dart';

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
                  style: CustomTextStyle.kodch23BlB,
                ),
                const Spacer(),
                Text(
                  "$score",
                  style: CustomTextStyle.kodch20BlM,
                ),
                Text(
                  S.of(context).points,
                  style: CustomTextStyle.kodch10Bll,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 230,
                  child: Text(
                    subtitle,
                    style: CustomTextStyle.kodch14GM,
                  ),
                ),
                const Spacer(),
                CircleRow(
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
