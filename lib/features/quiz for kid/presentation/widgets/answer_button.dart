import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.answer, required this.onPressed, required this.selectedAnswer});
  final Map<String, dynamic> answer;
  final void Function()? onPressed;
  final Map<String, dynamic>? selectedAnswer;
  @override
  Widget build(BuildContext context) {
    bool isSelected = answer == selectedAnswer;
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