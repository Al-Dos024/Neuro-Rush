
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/answer_button.dart';
import 'package:flutter/material.dart';

class AnswerList extends StatelessWidget {
  const AnswerList({
    super.key,
    required this.answersList,
    required this.selectedAnswer,
    required this.onPressed,
  });

  final List<Map<String, dynamic>> answersList;
  final Map<String, dynamic>? selectedAnswer;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: (1 / .40),
              crossAxisCount: 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
            ),
            itemCount: answersList.length,
            itemBuilder: (context, index) => AnswerButton(answer: answersList[index]["ans"] , onPressed : onPressed , selectedAnswer: selectedAnswer ), ),
      ),
    );
  }
}

