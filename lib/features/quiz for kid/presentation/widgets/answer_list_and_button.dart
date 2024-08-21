import 'package:flutter/material.dart';

// Define the AnswerButton widget
class AnswerButton extends StatelessWidget {
  final Map<String, dynamic> answer;
  final bool isSelected;
  final VoidCallback onPressed;

  const AnswerButton({
    super.key,
    required this.answer,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: isSelected ? Colors.white : Colors.black,
          backgroundColor:
              isSelected ? const Color(0xffC972B1) : const Color(0xffE8E8F6),
          shape: const StadiumBorder(),
        ),
        onPressed: onPressed,
        child: Text(answer['name']),
      ),
    );
  }
}

// Define the AnswerList widget
class AnswerList extends StatelessWidget {
  final List<Map<String, dynamic>> answersList;
  final Map<String, dynamic>? selectedAnswer;
  final ValueChanged<Map<String, dynamic>> onAnswerSelected;

  const AnswerList({
    super.key,
    required this.answersList,
    required this.selectedAnswer,
    required this.onAnswerSelected,
  });

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
          itemBuilder: (context, index) {
            // Ensure answerList[index] is valid and not null
            final answer = answersList[index]['ans'];
            return AnswerButton(
              answer: answer,
              isSelected: answer == selectedAnswer,
              onPressed: () => onAnswerSelected(answer),
            );
          },
        ),
      ),
    );
  }
}
