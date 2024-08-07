import 'package:flutter/material.dart';

class AnswerList extends StatelessWidget {
  const AnswerList(
      {super.key,
      required this.answersList,
      required this.selectedAnswer,
      required this.onPressed});

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
            itemBuilder: (context, index) => answerButton(
                  answersList[index]['ans'],
                )),
      ),
    );
  }

  Widget answerButton(Map<String, dynamic> answer) {
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


