import 'package:adhd/constants.dart';
import 'package:adhd/features/quiz%20for%20kid/data/model/question_model.dart';
import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget(
      {super.key,
      required this.currentQuestionIndex,
      required this.questionList});

  final int currentQuestionIndex;
  final List<Question> questionList;
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
              // Container(
              //   height: 35,
              //   width: 35,
              //   decoration: const BoxDecoration(
              //     borderRadius: BorderRadius.all(Radius.circular(10)),
              //     color: kBluecolor_3,
              //   ),
              //   alignment: Alignment.center,
              //   child: Text('${currentQuestionIndex + 1}',
              //       style: CustomTextStyle.kodch18WM),
              // ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(questionList[currentQuestionIndex].questionText,
                        textAlign: TextAlign.center,
                        style: CustomTextStyle.kodch18BM),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Examples during adulthood:",
                            textAlign: TextAlign.start,
                            style: CustomTextStyle.kodch12BlM),
                      ),
                    ),
                    Column(
                      children: questionList[currentQuestionIndex]
                          .examplesList
                          .map(
                            (e) => Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 7.5),
                                  child: Container(
                                    width: 5,
                                    height: 5,
                                    decoration: const BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                Flexible(
                                  child: Text(
                                    e,
                                    style: CustomTextStyle.kodch12BM,
                                  ),
                                ),
                              ],
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0, bottom: 15),
          child: Text("  Answer :", style: CustomTextStyle.kodch14BM),
        )
      ],
    );
  }
}
