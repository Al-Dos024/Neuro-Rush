import 'package:adhd/constants.dart';
import 'package:adhd/core/utils/show_snackbar.dart';
import 'package:adhd/features/quiz_for_adult/data/cubit/quiz_cubit.dart';
import 'package:adhd/features/quiz_for_adult/data/cubit/quiz_state.dart';
import 'package:adhd/features/quiz_for_adult/data/model/nested_list.dart';
import 'package:adhd/features/quiz_for_adult/presentation/widgets/answer_list_and_button.dart';
import 'package:adhd/features/quiz_for_adult/presentation/widgets/next_button_widget.dart';
import 'package:adhd/features/quiz_for_adult/presentation/widgets/question_widget.dart';
import 'package:adhd/features/quiz_for_adult/presentation/widgets/score_board.dart';
import 'package:adhd/features/quiz_for_adult/presentation/widgets/shimmer_loading.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizForAdult extends StatelessWidget {
  const QuizForAdult({super.key});

  @override
  Widget build(BuildContext context) {
    final List<int> kidsList = List.filled(80, 0);
    return BlocProvider(
      create: (context) => QuizForAdultCubit()..loadQuestionsAndAnswers(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back, color: kWhitecolor),
          ),
          toolbarHeight: 80,
          backgroundColor: kBluecolor_1,
          title: Text(
            S.of(context).quiz_for_adult,
            style: GoogleFonts.kodchasan(
              color: kWhitecolor,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          actions: [
            BlocBuilder<QuizForAdultCubit, QuizForAdultState>(
              builder: (context, state) {
                if (state is QuizForAdultLoaded) {
                  return ScoreBoard(
                    currentQuestionIndex: state.currentQuestionIndex,
                    questionList: state.questionsList,
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ],
        ),
        body: BlocBuilder<QuizForAdultCubit, QuizForAdultState>(
          builder: (context, state) {
            if (state is QuizForAdultLoading) {
              return const ShimmerLoading();
            } else if (state is QuizForAdultLoaded) {
              return Container(
                margin: const EdgeInsets.only(
                    right: 20, left: 20, top: 30, bottom: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    QuestionWidget(
                      questionsList: state.questionsList,
                      currentQuestionIndex: state.currentQuestionIndex,
                    ),
                    AnswerList(
                      answersList: state.answersList,
                      selectedAnswer: state.selectedAnswer,
                      onAnswerSelected: (answer) {
                        context.read<QuizForAdultCubit>().answerSelected(
                              answer,
                              kidsList,
                              state.currentQuestionIndex,
                            );
                      },
                    ),
                    NextButtonWidget(
                      isLastQuestion: state.currentQuestionIndex ==
                          state.questionsList.length - 1,
                      isPressedOn: state.isPressedOn,
                      onBackPressed: () {
                        if (state.currentQuestionIndex == 0) {
                          showSnackBar(context,
                              title: S.of(context).opps,
                              message: S.of(context).back_btn_massge);
                        } else {
                          context.read<QuizForAdultCubit>().changeQuestion(
                                state.currentQuestionIndex - 1,
                                kidsList,
                              );
                        }
                      },
                      onNextPressed: () {
                        context.read<QuizForAdultCubit>().changeQuestion(
                              state.currentQuestionIndex + 1,
                              kidsList,
                            );
                      },
                      kidsList: kidsList,
                      currentQuestionIndex: state.currentQuestionIndex,
                      nestedList: nestedList,
                      listNumP2: listNumP2,
                    ),
                  ],
                ),
              );
            } else if (state is QuizForAdultError) {
              return Center(child: Text('Error: ${state.error}'));
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
