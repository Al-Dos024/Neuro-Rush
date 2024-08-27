import 'package:adhd/constants.dart';
import 'package:adhd/features/main/presentation/views/previous_results_adult.dart';
import 'package:adhd/features/main/presentation/views/previous_results_child.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PreviousResultMain extends StatelessWidget {
  const PreviousResultMain({super.key});

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
          S.of(context).Previous_Results,
          style: GoogleFonts.kodchasan(
            color: kWhitecolor,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
        child: Column(
          children: [
            const Spacer(),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.31,
              decoration: BoxDecoration(
                color: Colors.pink.shade100,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Flexible(
                      flex: 1,
                      child: Image(
                        image: AssetImage('assets/images/Exams-amico.png'),
                        height: 180,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          S.of(context).What_is,
                          style: GoogleFonts.kodchasan(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          S.of(context).ADHD_ar,
                          style: GoogleFonts.kodchasan(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            //color: kWhitecolor,
                          ),
                        ),
                        Text(
                          S.of(context).ADHD_ar,
                          style: GoogleFonts.kodchasan(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            //color: kWhitecolor,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PreviousResults(),
                              ),
                            );
                          },
                          child: const Icon(
                            Icons.play_circle_outline_outlined,
                            weight: 40,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.31,
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade300,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          S.of(context).What_is,
                          style: GoogleFonts.kodchasan(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          S.of(context).ADHD_ar,
                          style: GoogleFonts.kodchasan(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            //color: kWhitecolor,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const PreviousResultsAdult(),
                              ),
                            );
                          },
                          child: const Icon(
                            Icons.play_circle_outline_outlined,
                            weight: 40,
                          ),
                        ),
                      ],
                    ),
                    const Flexible(
                      flex: 1,
                      child: Image(
                        image: AssetImage('assets/images/Exams-rafiki.png'),
                        height: 180,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
