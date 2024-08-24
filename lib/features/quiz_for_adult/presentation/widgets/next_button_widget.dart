import 'package:adhd/features/quiz%20for%20kid/presentation/screens/result.dart';
import 'package:adhd/features/quiz_for_adult/presentation/widgets/send_data_to_firebase.dart';
import 'package:flutter/material.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/Next_button.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/back_button.dart';
import 'package:adhd/core/utils/show_snackbar.dart';
import 'package:adhd/generated/l10n.dart';

class NextButtonWidget extends StatelessWidget {
  final bool isLastQuestion;
  final bool isPressedOn;
  final VoidCallback onBackPressed;
  final VoidCallback onNextPressed;
  final List<int> kidsList;
  final int currentQuestionIndex;
  final List<List<int>> nestedList;
  final List<int> listNumP2;

  const NextButtonWidget({
    super.key,
    required this.isLastQuestion,
    required this.isPressedOn,
    required this.onBackPressed,
    required this.onNextPressed,
    required this.kidsList,
    required this.currentQuestionIndex,
    required this.nestedList,
    required this.listNumP2,
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
              for (int j = 0; j < nestedList.length; j++) {
                for (int i = 0; i < nestedList[j].length; i++) {
                  if (currentQuestionIndex + 1 == nestedList[j][i]) {
                    listNumP2[j] += kidsList[currentQuestionIndex];
                  }
                }
              }
              if (isLastQuestion) {
                sendDataToFirebaseAdult();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Result(
                      kidsList: kidsList,
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
