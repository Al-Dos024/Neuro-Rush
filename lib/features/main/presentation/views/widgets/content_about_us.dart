
import 'package:adhd/constants.dart';
import 'package:adhd/features/main/presentation/views/widgets/custom_title_subtitle.dart';
import 'package:adhd/features/main/presentation/views/widgets/image_section_about_us.dart';
import 'package:flutter/material.dart';

class ContentAboutUs extends StatelessWidget {
  const ContentAboutUs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: kBluecolor_4,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 18,vertical: 10),
        child: Column(
          children: [
            CustomTitleSubTitle(
                title: "Our Mission",
                subTitle:
                    "Our mission is to provide a reliable and user-friendly platform that helps diagnose and manage ADHD for both children and adults. We aim to support doctors, patients, and their families by offering tools that simplify the assessment process and track progress over time."),
            SizedBox(
              height: 20,
            ),
            ImageSectionAboutUs(),
          
            CustomTitleSubTitle(
                title: "What We Offer",
                subTitle:
                    "Our application offers three main features: detailed information about ADHD, an assessment test for children, and an assessment test for adults. Additionally, users can access past results, allowing them to monitor changes and improvements over time."),
            SizedBox(
              height: 20,
            ),
            CustomTitleSubTitle(
                title: "Why We Developed This App",
                subTitle:
                    "We developed this app to address the growing need for accessible, accurate, and convenient tools to diagnose ADHD. Traditional methods can be time-consuming and stressful, so we designed this app to make the process easier and more approachable for everyone involved."),
            SizedBox(
              height: 20,
            ),
            CustomTitleSubTitle(
                title: "Future Vision",
                subTitle:
                    "Looking ahead, we plan to expand our offerings by adding more features, such as personalized treatment plans and community support resources, to better serve our users and contribute to ADHD awareness and management."),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
