import 'package:adhd/features/what-is-ADHD/widgets/custom_body_text.dart';
import 'package:adhd/features/what-is-ADHD/widgets/custom_headline_text.dart';
import 'package:flutter/material.dart';

class AdhdReasonsSection extends StatelessWidget {
  const AdhdReasonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHeadlineText(
            title: "Reasons",
            subTitle:
                "There is no single cause for ADHD. However, there are a number of factors that may contribute to or worsen it, including genetics, diet, and physical and social environments.\n"),
        CustomBodyText(
            title: "Genetic factors",
            subTitle:
                "ADHD is thought to be mainly hereditary, with genetic factors contributing to about 75% of cases. Several genes, including those affecting dopamine transporters, are believed to play a role in the disorder. ADHD is considered to be a complex interaction between genetic and environmental factors. One theory suggests that hyperactivity was an adaptive trait in early humans, with individuals with ADHD being more effective at tasks involving risk or competition in certain ancient societies.\n"),
        CustomBodyText(
            title: "Environmental factors",
            subTitle:
                "Environmental factors play a significant role in ADHD development. Factors such as alcohol and tobacco exposure during pregnancy, lead exposure, premature birth, and infectious diseases increase the risk. Studies have linked the pesticide chlorpyrifos to ADHD symptoms in children. Higher pesticide exposure correlates with a 35% increased risk of ADHD, and even low levels of exposure can have an impact.\n"),
        CustomBodyText(
            title: "Dietary systems",
            subTitle:
                "A study by the University of Southampton linked children's consumption of certain artificial colors with hyperactivity, prompting action by the British government and the European Commission. In the United States, federal law requires food manufacturers to disclose the use of artificial colors on product packaging. This allows consumers to make informed choices about the products they purchase. The findings highlight the importance of continued vigilance in regulating artificial colors in food.\n")
      ],
    );
  }
}
