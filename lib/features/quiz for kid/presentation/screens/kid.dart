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
import 'package:google_fonts/google_fonts.dart';

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
        title: Text(
          "Quiz for Kid",
          style: GoogleFonts.kodchasan(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: [
          Stack(
            children: <Widget>[
              Container(
                  width: 80,
                  height: 80,
                  alignment: Alignment.center,
                  child: Image.asset('assets/icons/slash.png')),
              Container(
                width: 80,
                height: 80,
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(10),
                child: Text(
                  '${currentQuestionIndex + 1}',
                  style: GoogleFonts.kodchasan(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                width: 80,
                height: 80,
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(15),
                child: Text(
                  questionList.length.toString(),
                  style: GoogleFonts.kodchasan(
                      fontSize: 16,
                      color: Colors.white54,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(right: 20, left: 20, top: 30, bottom: 50),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: kBluecolor_3,
                ),
                alignment: Alignment.center,
                child: Text(
                  '${currentQuestionIndex + 1}',
                  style: GoogleFonts.kodchasan(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Expanded(
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
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0, bottom: 15),
          child: Text(
            " Answer :",
            style: GoogleFonts.kodchasan(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),
          ),
        )
      ],
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
                (e) => _answerButton(e),
              )
              .toList(),
        ),
      ),
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

    return Row(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: TextButton.icon(
              // style: TextButton.styleFrom(
              //   backgroundColor: kBluecolor_1,
              // ),
              label: Text(
                "Back",
                style: GoogleFonts.kodchasan(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              iconAlignment: IconAlignment.start,
              icon: Container(
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(0, 0),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const CircleAvatar(
                  backgroundColor: kQuizphase,
                  child: Icon(
                    fill: BorderSide.strokeAlignCenter,
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 27,
                  ),
                ),
              ),
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
              }),
        ),
        const Spacer(),
        Align(
          alignment: Alignment.topRight,
          child: TextButton.icon(
            // style: TextButton.styleFrom(
            //   backgroundColor: kBluecolor_1,
            // ),
            label: Text(
              "Next",
              style: GoogleFonts.kodchasan(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            iconAlignment: IconAlignment.end,
            icon: Container(
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    offset: Offset(0, 0),
                  ),
                ],
                borderRadius: BorderRadius.circular(25),
              ),
              child: const CircleAvatar(
                backgroundColor: kQuizphase,
                child: Icon(
                  fill: BorderSide.strokeAlignCenter,
                  Icons.arrow_forward,
                  color: Colors.black,
                  size: 27,
                ),
              ),
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

                  showDialog(
                      context: context, builder: (_) => _showScoreDialog());
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
          ),
        ),
      ],
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
