import 'package:adhd/features/what-is-ADHD/presentation/views/widgets/custom_body_text.dart';
import 'package:adhd/features/what-is-ADHD/presentation/views/widgets/custom_headline_text.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:flutter/material.dart';

class AdhdReasonsSection extends StatelessWidget {
  const AdhdReasonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHeadlineText(
            title: S.of(context).Reasons_title,
            subTitle: S.of(context).Reasons_subtitle),
        CustomBodyText(
            title: S.of(context).Genetic_factors_title,
            subTitle: S.of(context).Genetic_factors_subtitle),
        CustomBodyText(
            title: S.of(context).Environmental_factors_title,
            subTitle: S.of(context).Environmental_factors_subtitle),
        CustomBodyText(
            title: S.of(context).Dietary_systems_title,
            subTitle: S.of(context).Dietary_systems_subtitle)
      ],
    );
  }
}
