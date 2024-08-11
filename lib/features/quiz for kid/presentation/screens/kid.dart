// ignore_for_file: avoid_print
import 'package:adhd/core/utils/font_style.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/send_data_to_firebase.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/process_age_and_gender.dart';
import 'package:adhd/core/helper/fetch_data.dart';
import 'package:flutter/material.dart';
import 'package:adhd/constants.dart';
import 'package:adhd/features/quiz%20for%20kid/data/model/nested_list.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/screens/result.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/Next_button.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/back_button.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/question_widget.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/score_board.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/show_snackbar.dart';

class QuizForKids extends StatefulWidget {
  const QuizForKids({super.key, required this.age, required this.isMale});
  final int age;
  final bool isMale;
  @override
  State<QuizForKids> createState() => _QuizForKidsState();
}

class _QuizForKidsState extends State<QuizForKids> {
  //define the data's
  final List<int> kidsList = List.filled(80, 0);
  List<Map<String, dynamic>> questionsList = [];
  List<Map<String, dynamic>> answersList = [];
  int currentQuestionIndex = 0;
  int score = 0;
  bool _isPressedOn = false;
  Map<String, dynamic>? selectedAnswer;

  Future<void> loadQuestionsAndAnswer() async {
    final questions = await fetchQuestions();
    final answers = await fetchAnswers();
    setState(() {
      questionsList = questions;
      answersList = answers;
    });
  }

  @override
  void initState() {
    super.initState();
    loadQuestionsAndAnswer();
  }

  @override
  Widget build(BuildContext context) {
    if (questionsList.isEmpty) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        toolbarHeight: 80,
        backgroundColor: kBluecolor_1,
        title: Text("Quiz for Kid", style: CustomTextStyle.kodch20WM),
        centerTitle: true,
        actions: [
          ScoreBoard(
              currentQuestionIndex: currentQuestionIndex,
              questionList: questionsList)
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(right: 20, left: 20, top: 30, bottom: 50),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              QuestionWidget(
                questionsList: questionsList,
                currentQuestionIndex: currentQuestionIndex,
              ),
              answerList(),
              // AnswerList(
              //   answersList: answersList,
              //   selectedAnswer: selectedAnswer,
              //   onPressed: () {
              //     _isPressedOn = true;
              //     setState(() {
              //       selectedAnswer = answer;
              //       kidsList[currentQuestionIndex] = answer['points'];
              //     });
              //   },
              // ),
              _nextButton(),
            ]),
      ),
    );
  }

  answerList() {
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
            itemCount: 4,
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
        onPressed: () {
          _isPressedOn = true;
          setState(() {
            selectedAnswer = answer;
            kidsList[currentQuestionIndex] = answer['points'];
          });
        },
        child: Text(answer['name']),
      ),
    );
  }

  _nextButton() {
    bool isLastQuestion = false;

    if (currentQuestionIndex == questionsList.length - 1) {
      isLastQuestion = true;
    }
    return Row(
      children: [
        GetBackButton(
          onPressed: () {
            if (currentQuestionIndex == 0) {
              showSnackBar(context,
                  title: "Opps", message: "You can't get back anymore");
            } else {
              setState(() {
                _isPressedOn = false;
                selectedAnswer = null;
                currentQuestionIndex--;
              });
            }
          },
        ),
        const Spacer(),
        GetNextButton(
          onPressed: () {
            if (_isPressedOn == false) {
              showSnackBar(context,
                  title: "Opps", message: "You must select an answer");
            } else {
              for (int j = 0; j < nestedList.length; j++) {
                for (int i = 0; i < nestedList[j].length; i++) {
                  if (currentQuestionIndex + 1 == nestedList[j][i]) {
                    listNumP2[j] += kidsList[currentQuestionIndex];
                  }
                }
              }
              if (isLastQuestion) {
                processAgeAndGender(isMale: widget.isMale, age: widget.age);
                sendDataToFirebase(isMale: widget.isMale, age: widget.age);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Result(
                      kidsList: kidsList,
                    ),
                  ),
                );
              } else {
                setState(() {
                  _isPressedOn = false;
                  selectedAnswer = null;
                  currentQuestionIndex++;
                });
              }
            }
          },
        )
      ],
    );
  }
}
