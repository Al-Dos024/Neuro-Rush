import 'package:adhd/constants.dart';
import 'package:adhd/core/utils/font_style.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/examples_widget.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:flutter/material.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: kQuizphase,
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
                      child: Text(questionsList[currentQuestionIndex]['quiz'],
                          textAlign: TextAlign.center,
                          style: CustomTextStyle.kodch18BM),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Text(S.of(context).Examples_quiz,
                          textAlign: TextAlign.start,
                          style: CustomTextStyle.kodch12BlM),
                    ),
                    ExamplesWidget(
                        ex: questionsList[currentQuestionIndex]['ex1']),
                    const SizedBox(
                      height: 10,
                    ),
                    ExamplesWidget(
                        ex: questionsList[currentQuestionIndex]['ex2'])
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0, bottom: 15),
          child: Text(S.of(context).answer, style: CustomTextStyle.kodch14BM),
        )
      ],
    );
  }
}
