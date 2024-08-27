import 'package:adhd/features/quiz_for_adult/presentation/screens/adult.dart';
import 'package:adhd/features/quiz_for_adult/presentation/screens/result_adult.dart';
import 'package:adhd/features/quiz_for_adult/presentation/widgets/Next_button.dart';
import 'package:adhd/features/quiz_for_adult/presentation/widgets/back_button.dart';
import 'package:adhd/features/quiz_for_adult/presentation/widgets/send_data_to_firebase.dart';
import 'package:flutter/material.dart';
import 'package:adhd/core/utils/show_snackbar.dart';
import 'package:adhd/generated/l10n.dart';

class NextButtonWidget extends StatelessWidget {
  final bool isLastQuestion;
  final bool isPressedOn;
  final VoidCallback onBackPressed;
  final VoidCallback onNextPressed;
  final List<int> adultList;
  final int currentQuestionIndex;

  const NextButtonWidget({
    super.key,
    required this.isLastQuestion,
    required this.isPressedOn,
    required this.onBackPressed,
    required this.onNextPressed,
    required this.adultList,
    required this.currentQuestionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GetBackButton(
          onPressed: onBackPressed,
        ),
        const Spacer(),
        GetNextButton(
          onPressed: () {
            if (!isPressedOn) {
              showSnackBar(context,
                  title: S.of(context).opps,
                  message: S.of(context).next_btn_massge);
            } else {
              if (currentQuestionIndex <= 5) {
                scoreA += adultList[currentQuestionIndex];
              } else {
                scoreB += adultList[currentQuestionIndex];
              }
              if (isLastQuestion) {
                sendDataToFirebaseAdult(scoreA);
                //print(adultList);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultAdult(
                      adultList: [(scoreA / 6).round(), (scoreB / 12).round()],
                    ),
                  ),
                );
              } else {
                onNextPressed();
              }
            }
          },
        ),
      ],
    );
  }
}
