import 'package:adhd/features/what-is-ADHD/widgets/custom_headline_text.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:flutter/material.dart';

class AdhdIntroductionSection extends StatelessWidget {
  const AdhdIntroductionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomHeadlineText(
      title: S.of(context).Introduction_title,
      subTitle: S.of(context).Introduction_subtitle,
    );
  }
}
