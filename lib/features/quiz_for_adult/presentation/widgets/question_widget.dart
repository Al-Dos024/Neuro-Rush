import 'package:adhd/constants.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/examples_widget.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:adhd/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({
    super.key,
    required this.questionsList,
    required this.currentQuestionIndex,
  });

  final int currentQuestionIndex;
  final List questionsList;
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyApp.themeNotifier.value == ThemeMode.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color:
                isDarkMode ? const Color(0xff4E5254) : const Color(0xffD8E3E7),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        questionsList[currentQuestionIndex]['quiz'],
                        textAlign: TextAlign.center,
                        style: GoogleFonts.kodchasan(
                          fontSize: 18,
                          color: isDarkMode ? kWhitecolor : kBlackcolor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        S.of(context).Examples_quiz,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.kodchasan(
                          fontSize: 12,
                          color: isDarkMode
                              ? const Color(0xff189EBB)
                              : kBluecolor_1,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                          decorationColor: isDarkMode
                              ? const Color(0xff189EBB)
                              : kBluecolor_1,
                        ),
                      ),
                    ),
                    ExamplesWidget(
                        ex: questionsList[currentQuestionIndex]['ex']),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0, bottom: 15),
          child: Text(
            S.of(context).answer,
            style: GoogleFonts.kodchasan(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: isDarkMode ? kWhitecolor : kBlackcolor,
            ),
          ),
        )
      ],
    );
  }
}
