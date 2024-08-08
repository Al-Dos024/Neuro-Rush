import 'package:adhd/constants.dart';
import 'package:adhd/features/main/widgets/custom_app_bar.dart';
import 'package:adhd/features/main/widgets/main_drawer.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/screens/def_the_kid.dart';
import 'package:adhd/features/what-is-ADHD/screens/what_is_adhd.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        endDrawer: MainDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(),
              MainViewContent(),
            ],
          ),
        ),
      ),
    );
  }
}

class MainViewContent extends StatelessWidget {
  const MainViewContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        children: [
          CustomCardMainView1(),
          SizedBox(
            height: 10,
          ),
          CustomCardMainView2(),
          SizedBox(
            height: 10,
          ),
          CustomCardMainView3(),
        ],
      ),
    );
  }
}

class CustomCardMainView1 extends StatelessWidget {
  const CustomCardMainView1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: kBluecolor_3,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const Flexible(
              flex: 1,
              child: Image(
                image: AssetImage("assets/images/more_adhd.png"),
                height: 180,
              ),
            ),
            Column(
              children: [
                Text(
                  "What is",
                  style: GoogleFonts.kodchasan(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: kWhitecolor,
                  ),
                ),
                Text(
                  "ADHD?",
                  style: GoogleFonts.kodchasan(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: kWhitecolor,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WhatIsAdhd(),
                      ),
                    );
                  },
                  child: Image.asset(
                    "assets/icons/video.png",
                    width: 40,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCardMainView2 extends StatelessWidget {
  const CustomCardMainView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kKindtestcolor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: Image.asset(
                "assets/images/kid_test.png",
                height: 180,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Kid Test",
                    style: GoogleFonts.kodchasan(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: kWhitecolor,
                    ),
                  ),
                  Text(
                    "3 - 17",
                    style: GoogleFonts.kodchasan(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: kWhitecolor.withOpacity(0.6),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DefineTheKid()),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_forward,
                      size: 34,
                      color: kWhitecolor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCardMainView3 extends StatelessWidget {
  const CustomCardMainView3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kAdulttestcolor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Adult Test",
                    style: GoogleFonts.kodchasan(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: kWhitecolor,
                    ),
                  ),
                  Text(
                    "18 - 40",
                    style: GoogleFonts.kodchasan(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: kWhitecolor.withOpacity(0.6),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward,
                    size: 34,
                    color: kWhitecolor,
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Flexible(
              flex: 1,
              child: Image.asset(
                "assets/images/adult_test.png",
                height: 180,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
