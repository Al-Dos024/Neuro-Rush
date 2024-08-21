// lib/features/quiz_for_kid/presentation/cubit/quiz_for_kids_cubit.dart
import 'package:adhd/features/quiz%20for%20kid/data/cubit/quiz_state.dart';
import 'package:bloc/bloc.dart';
import 'package:adhd/core/helper/fetch_data.dart';
import 'package:adhd/main.dart';

class QuizForKidsCubit extends Cubit<QuizForKidsState> {
  QuizForKidsCubit() : super(QuizForKidsInitial());
  final List<int> kidsList = List.filled(80, 0);

  Future<void> loadQuestionsAndAnswers() async {
    emit(QuizForKidsLoading());
    try {
      final currentLocale = MyApp.localeNotifier.value;
      final questions = currentLocale.languageCode == 'ar'
          ? await fetchQuestionsAr()
          : await fetchQuestionsEng();

      final answers = currentLocale.languageCode == 'ar'
          ? await fetchAnswersAr()
          : await fetchAnswersEng();

      emit(QuizForKidsLoaded(
        questionsList: questions,
        answersList: answers,
        currentQuestionIndex: 0,
        score: 0,
        isPressedOn: false,
        selectedAnswer: null,
      ));
    } catch (e) {
      emit(QuizForKidsError(e.toString()));
    }
  }

  void answerSelected(Map<String, dynamic> answer, List<int> kidsList,
      int currentQuestionIndex) {
    kidsList[currentQuestionIndex] = answer['points'] ?? 0;

    final state = this.state;
    if (state is QuizForKidsLoaded) {
      emit(QuizForKidsLoaded(
        questionsList: state.questionsList,
        answersList: state.answersList,
        currentQuestionIndex: state.currentQuestionIndex,
        score: state.score,
        isPressedOn: true,
        selectedAnswer: answer,
      ));
    }
  }

  void changeQuestion(int index, List<int> kidsList) {
    final state = this.state;
    if (state is QuizForKidsLoaded) {
      emit(QuizForKidsLoaded(
        questionsList: state.questionsList,
        answersList: state.answersList,
        currentQuestionIndex: index,
        score: state.score,
        isPressedOn: false,
        selectedAnswer: null,
      ));
    }
  }
}
