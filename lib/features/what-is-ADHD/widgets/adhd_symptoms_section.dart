
import 'package:adhd/features/what-is-ADHD/widgets/custom_headline_text.dart';
import 'package:flutter/material.dart';

class AdhdSymptomsSection extends StatelessWidget {
  const AdhdSymptomsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomHeadlineText(
      title: "Symptoms",
      subTitle:
          "Attention deficit hyperactivity disorder (ADHD) is characterized by inattention, hyperactivity, and impulsivity. The symptoms are challenging to define. They must be observed for at least six months in two different settings to diagnose ADHD.  When the symptoms are categorized in children, three subtypes emerge: predominantly inattention, predominantly hyperactivity-impulsivity, and combined inattention, hyperactivity, and impulsivity. Most people exhibit some of these behaviors, but not to the point where they significantly interfere with their work, relationships, or studies. Symptoms may persist into adulthood, but diagnosing ADHD in adults remains a clinical diagnosis. Symptoms may differ from childhood to adolescence due to adaptations and avoidance mechanisms acquired during socialization.",
    );
  }
}
