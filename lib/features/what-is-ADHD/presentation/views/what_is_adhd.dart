import 'package:adhd/constants.dart';
import 'package:adhd/features/what-is-ADHD/presentation/views/widgets/adhd_introduction_section.dart';
import 'package:adhd/features/what-is-ADHD/presentation/views/widgets/adhd_pathophysiology_section.dart';
import 'package:adhd/features/what-is-ADHD/presentation/views/widgets/adhd_reason_section.dart';
import 'package:adhd/features/what-is-ADHD/presentation/views/widgets/adhd_symptoms_section.dart';
import 'package:adhd/features/what-is-ADHD/presentation/views/widgets/adhd_video_section.dart';
import 'package:adhd/generated/l10n.dart';
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
             color:kWhitecolor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: kBluecolor_1,
        title: Text(
          S.of(context).What_is_adhd_title,
          style: GoogleFonts.kodchasan(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: kWhitecolor,
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
