import 'package:adhd/constants.dart';
import 'package:adhd/core/utils/assets.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/screens/def_the_kid.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PreviousResults extends StatelessWidget {
  const PreviousResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: kWhitecolor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: kBluecolor_1,
        title: Text(
          "Previous Results",
          style: GoogleFonts.kodchasan(
            color: kWhitecolor,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
        child: Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffB0DDE7),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 21),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Attempt Number 1",
                        style: GoogleFonts.kodchasan(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: kBluecolor_4,
                        ),
                      ),
                      Text(
                        "average:",
                        style: GoogleFonts.kodchasan(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: kBluecolor_1,
                        ),
                      ),
                      Text(
                        "age:",
                        style: GoogleFonts.kodchasan(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: kBluecolor_1,
                        ),
                      ),
                      Text(
                        "test time:",
                        style: GoogleFonts.kodchasan(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: kBluecolor_1,
                        ),
                      ),
                      Text(
                        "Data:",
                        style: GoogleFonts.kodchasan(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: kBluecolor_1,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Flexible(
                      child: Image.asset(
                        AssetsData.prvtest,
                        height: 180,
                      ),
                    ),
                    IconButton(
                      alignment: Alignment.centerRight,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DefineTheKid()),
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 24,
                        color: kWhitecolor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
