import 'package:adhd/constants.dart';
import 'package:adhd/features/main/presentation/views/widgets/content_about_us.dart';
import 'package:adhd/features/main/presentation/views/widgets/custom_image_about_us.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBluecolor_4,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomImageAboutUs(),
            ContentAboutUs(),
          ],
        ),
      ),
    );
  }
}
