
import 'package:adhd/features/what-is-ADHD/widgets/custom_headline_text.dart';
import 'package:flutter/material.dart';

class AdhdIntroductionSection extends StatelessWidget {
  const AdhdIntroductionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomHeadlineText(
      title: "Introduction",
      subTitle:
          "ADHD is a common neurodevelopmental disorder that starts in childhood and affects around 5% of the global population. Children with ADHD may struggle to follow instructions, control their actions, and integrate into school environments, leading to academic performance issues. Managing children with ADHD can be challenging for parents and teachers. It's important to provide children with love, support, and understanding, and to work with healthcare professionals and teachers to learn how to handle the child best.",
    );
  }
}
