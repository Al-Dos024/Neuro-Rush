import 'package:adhd/features/what-is-ADHD/presentation/views/widgets/custom_headline_text.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:flutter/material.dart';

class AdhdPathophysiologySection extends StatelessWidget {
  const AdhdPathophysiologySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHeadlineText(
            title: S.of(context).Pathophysiology_title,
            subTitle: S.of(context).Pathophysiology_subtitle_one),
        Image.asset(
          "assets/icons/brain.png",
          height: 100,
          width: 130,
        ),
        CustomHeadlineText(
            title: "", subTitle: S.of(context).Pathophysiology_subtitle_two)
      ],
    );
  }
}
