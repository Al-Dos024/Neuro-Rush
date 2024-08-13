import 'package:adhd/constants.dart';
import 'package:adhd/features/what-is-ADHD/widgets/adhd_introduction_section.dart';
import 'package:adhd/features/what-is-ADHD/widgets/adhd_pathophysiology_section.dart';
import 'package:adhd/features/what-is-ADHD/widgets/adhd_reason_section.dart';
import 'package:adhd/features/what-is-ADHD/widgets/adhd_symptoms_section.dart';
import 'package:adhd/features/what-is-ADHD/widgets/adhd_video_section.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WhatIsAdhd extends StatelessWidget {
  const WhatIsAdhd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: kBluecolor_1,
        title: Text(
          "What is ADHD ?",
          style: GoogleFonts.kodchasan(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AdhdIntroductionSection(),
              SizedBox(
                height: 10,
              ),
              AdhdSymptomsSection(),
              SizedBox(
                height: 10,
              ),
              AdhdVideoSection(),
              SizedBox(
                height: 10,
              ),
              AdhdReasonsSection(),
              SizedBox(
                height: 10,
              ),
              AdhdPathophysiologySection()
            ],
          ),
        ),
      ),
    );
  }
}
