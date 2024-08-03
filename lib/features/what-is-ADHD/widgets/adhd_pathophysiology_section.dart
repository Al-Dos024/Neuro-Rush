
import 'package:adhd/features/what-is-ADHD/widgets/custom_headline_text.dart';
import 'package:flutter/material.dart';

class AdhdPathophysiologySection extends StatelessWidget {
  const AdhdPathophysiologySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomHeadlineText(
            title: "Pathophysiology",
            subTitle:
                "The pathophysiology of ADHD is complex and unclear. Research shows reduced brain volume in children with ADHD, particularly in the left prefrontal cortex, suggesting dysfunction in the frontal lobe. "),
        Image.asset(
          "assets/icons/brain.png",
          height: 100,
          width: 130,
        ),
        const CustomHeadlineText(title: "", subTitle: "Neuroimaging studies are now only used for research purposes, not for diagnosis. A 2005 review identified four interconnected frontal brain regions implicated in ADHD: the lateral prefrontal cortex, the dorsal anterior cingulate cortex, the caudate nucleus, and the cortex.")
      ],
    );
  }
}
