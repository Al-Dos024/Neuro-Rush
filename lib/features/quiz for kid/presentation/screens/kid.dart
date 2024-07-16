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
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/passed_color.dart';
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
  final List<int> _ph2ansList = List.filled(80, 0);
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: kBluecolor_1,
        title: const Text(
          "Quiz for Kid",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          Stack(
            children: <Widget>[
              Container(
                width: 80,
                height: 80,
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.center,
                child: Text(
                  "/",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                width: 80,
                height: 80,
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.topLeft,
                child: Text(
                  '${currentQuestionIndex + 1}',
                ),
              ),
              Container(
                width: 80,
                height: 80,
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomRight,
                child: Text(
                  questionList.length.toString(),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          _questionWidget(),
          _answerList(),
          _nextButton(),
        ]),
      ),
    );
  }

  _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Question ${currentQuestionIndex + 1}/${questionList.length.toString()}",
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 234, 234, 234),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text(
              questionList[currentQuestionIndex].questionText,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        )
      ],
    );
  }

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answersList
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
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
            _ph2ansList[currentQuestionIndex] = answer.isCorrect;
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

    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: const Color(0xff6A74D5),
          shape: const StadiumBorder(),
        ),
        onPressed: () {
          if (_isPressedOn == false) {
            showSnackBar(context, "You must select an answer");
          } else {
            for (int j = 0; j < nestedList.length; j++) {
              for (int i = 0; i < nestedList[j].length; i++) {
                if (currentQuestionIndex + 1 == nestedList[j][i]) {
                  listNumP2[j] += _ph2ansList[currentQuestionIndex];
                }
              }
            }
            if (isLastQuestion) {
              //display score

              showDialog(context: context, builder: (_) => _showScoreDialog());
            } else {
              //next question
              setState(() {
                _isPressedOn = false;
                selectedAnswer = null;
                currentQuestionIndex++;
              });
            }
          }
        },
        child: Text(isLastQuestion ? "Submit" : "Next"),
      ),
    );
  }

  _showScoreDialog() {
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
                Row(
                  children: [
                    scoreF >= 60
                        ? TextButton(
                            onPressed: () {}, child: const Text("A advice"))
                        : const TextButton(
                            onPressed: null, child: Text("A advice")),
                    scoreF >= 60
                        ? TextButton(
                            onPressed: () {}, child: const Text("B advice"))
                        : const TextButton(
                            onPressed: null, child: Text("B advice")),
                    scoreF >= 60
                        ? TextButton(
                            onPressed: () {}, child: const Text("F advice"))
                        : const TextButton(
                            onPressed: null, child: Text("F advice")),
                  ],
                ),
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
                TextButton(
                    onPressed: () {},
                    child: const Text("What the letter mean?")),
                const TextButton(
                    onPressed: null,
                    child: Text("Go To phase 3? (soon, stay turned)")),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
