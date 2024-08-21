import 'package:adhd/features/what-is-ADHD/presentation/views/widgets/custom_headline_text.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:flutter/material.dart';

class AdhdSymptomsSection extends StatelessWidget {
  const AdhdSymptomsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomHeadlineText(
      title: S.of(context).Symptoms_title,
      subTitle: S.of(context).Symptoms_subtitle,
    );
  }
}
