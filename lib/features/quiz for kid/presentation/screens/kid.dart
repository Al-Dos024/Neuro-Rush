// ignore_for_file: avoid_print
import 'package:adhd/constants.dart';
import 'package:adhd/features/quiz%20for%20kid/data/Dataset/female/female12-14.dart';
import 'package:adhd/features/quiz%20for%20kid/data/Dataset/female/female15-17.dart';
import 'package:adhd/features/quiz%20for%20kid/data/Dataset/female/female3-5.dart';
import 'package:adhd/features/quiz%20for%20kid/data/Dataset/female/female6-8.dart';
import 'package:adhd/features/quiz%20for%20kid/data/Dataset/female/female9-11.dart';
import 'package:adhd/features/quiz%20for%20kid/data/Dataset/male/male12-14.dart';
import 'package:adhd/features/quiz%20for%20kid/data/Dataset/male/male15-17.dart';
import 'package:adhd/features/quiz%20for%20kid/data/Dataset/male/male3-5.dart';
import 'package:adhd/features/quiz%20for%20kid/data/Dataset/male/male6-8.dart';
import 'package:adhd/features/quiz%20for%20kid/data/Dataset/male/male9-11.dart';
import 'package:adhd/features/quiz%20for%20kid/data/model/kid_question.dart';
import 'package:adhd/features/quiz%20for%20kid/data/model/nested_list.dart';
import 'package:adhd/features/quiz%20for%20kid/data/model/question_model.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/Next_button.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/back_button.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/passed_color.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/question_widget.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/score_board.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/show_snackbar.dart';
import 'package:flutter/material.dart';

class QuizForKids extends StatefulWidget {
  const QuizForKids({super.key, required this.age, required this.isMale});
  final int age;
  final bool isMale;
  @override
  State<QuizForKids> createState() => _QuizForKidsState();
}

class _QuizForKidsState extends State<QuizForKids> {
  //define the datas
  List<Question> questionList = questionsForChild();
  int currentQuestionIndex = 0;
  int score = 0;
  bool _isPressedOn = false;
  final List<int> kidsList = List.filled(80, 0);
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
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
              questionList: questionList)
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(right: 20, left: 20, top: 30, bottom: 50),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          QuestionWidget(
              currentQuestionIndex: currentQuestionIndex,
              questionList: questionList),
          _answerList(),
          _nextButton(),
        ]),
      ),
    );
  }

  _answerList() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: GridView.count(
          childAspectRatio: (1 / .35),
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          children: questionList[currentQuestionIndex]
              .answersList
              .map(
                (e) => answerButton(e),
              )
              .toList(),
        ),
      ),
    );
  }

  Widget answerButton(Answer answer) {
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
            kidsList[currentQuestionIndex] = answer.isCorrect;
          });
        },
        child: Text(answer.answerText),
      ),
    );
  }

  _nextButton() {
    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }
    return Row(
      children: [
        GetBackButton(
          onPressed: () {
            if (currentQuestionIndex == 0) {
              showSnackBar(context, "You can't get back anymore");
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
              showSnackBar(context, "You must select an answer");
            } else {
              for (int j = 0; j < nestedList.length; j++) {
                for (int i = 0; i < nestedList[j].length; i++) {
                  if (currentQuestionIndex + 1 == nestedList[j][i]) {
                    listNumP2[j] += kidsList[currentQuestionIndex];
                  }
                }
              }
              if (isLastQuestion) {
                showDialog(context: context, builder: (_) => showScoreDialog());
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

  showScoreDialog() {
    bool isPassed = false;

    // String title = isPassed ? "Passed " : "Failed";
    if (widget.isMale == true && (widget.age >= 3 && widget.age <= 5)) {
      all3_5FunctionM();
      print('in 3 to 5 , male');
    } else if (widget.isMale == true && (widget.age >= 6 && widget.age <= 8)) {
      all6_8FunctionM();
      print('in 6 to 8 , male');
    } else if (widget.isMale == true && (widget.age >= 9 && widget.age <= 11)) {
      all9_11FunctionM();
      print('in 9 to 11, male');
    } else if (widget.isMale == true &&
        (widget.age >= 12 && widget.age <= 14)) {
      all12_14FunctionM();
      print('in 12 to 14, male');
    } else if (widget.isMale == true &&
        (widget.age >= 15 && widget.age <= 17)) {
      all15_17FunctionM();
      print('in 15 to 17, male');
    } else if (widget.isMale == false && (widget.age >= 3 && widget.age <= 5)) {
      all3_5FunctionF();
      print('in 3 to 5 , female');
    } else if (widget.isMale == false && (widget.age >= 6 && widget.age <= 8)) {
      all6_8FunctionF();
      print('in 6 to 8, female');
    } else if (widget.isMale == false &&
        (widget.age >= 9 && widget.age <= 11)) {
      all9_11FunctionF();
      print('in 9 to 11 , female');
      print(listNumP2.toString());
    } else if (widget.isMale == false &&
        (widget.age >= 12 && widget.age <= 14)) {
      all12_14FunctionF();
      print('in 12 to 14, female');
    } else if (widget.isMale == false &&
        (widget.age >= 15 && widget.age <= 17)) {
      all15_17FunctionF();
      print('in 15 to 17, female');
    }
    //send data to realtime database

    // databaseRef.child(uid).child("phase two Child").set(
    //   {
    //     'obstinacy score': scoreA,
    //     'Lack of attention score': scoreB,
    //     'Hyperactivity score': scoreC,
    //     'anxiety score': scoreD,
    //     'Perfection score': scoreE,
    //     'social problems score': scoreF,
    //     'Physical problems score': scoreG,
    //     'attention deficit score': scoreH,
    //     'Arousal and impulsivity score': scoreI,
    //     'Passion score': scoreJ,
    //     'General indicator score': scoreK,
    //     'DMS 5 score': scoreL,
    //     'Hyperactivity DMS 5 score': scoreM,
    //     'mixed DMS 5 score': scoreN,
    //   },
    // );
    return SingleChildScrollView(
      child: AlertDialog(
        title: PassedColorList(isPassed: isPassed),
        content: const Center(
            child: Text(
          'You have passed the phase two',
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        actions: [
          Center(
            child: Column(
              children: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        currentQuestionIndex = 0;
                        score = 0;
                        selectedAnswer = null;
                        resetnumandScore();
                      });
                    },
                    child: const Text("Return to phases")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
