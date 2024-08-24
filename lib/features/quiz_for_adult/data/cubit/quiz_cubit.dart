import 'package:adhd/core/helper/fetch_data.dart';
import 'package:adhd/features/quiz_for_adult/data/cubit/quiz_state.dart';
import 'package:bloc/bloc.dart';
import 'package:adhd/main.dart';

class QuizForAdultCubit extends Cubit<QuizForAdultState> {
  QuizForAdultCubit() : super(QuizForAdultInitial());
  final List<int> adultList = List.filled(18, 0);

  Future<void> loadQuestionsAndAnswers() async {
    emit(QuizForAdultLoading());
    try {
      final currentLocale = MyApp.localeNotifier.value;
      final questions = currentLocale.languageCode == 'ar'
          ? await fetchQuestionsAduAr()
          : await fetchQuestionsAduEng();

      final answers = currentLocale.languageCode == 'ar'
          ? await fetchAnswersAduAr()
          : await fetchAnswersAduEng();

      emit(QuizForAdultLoaded(
        questionsList: questions,
        answersList: answers,
        currentQuestionIndex: 0,
        score: 0,
        isPressedOn: false,
        selectedAnswer: null,
      ));
    } catch (e) {
      emit(QuizForAdultError(e.toString()));
    }
  }

  void answerSelected(Map<String, dynamic> answer, List<int> adultList,
      int currentQuestionIndex) {
    adultList[currentQuestionIndex] = answer['points'] ?? 0;

    final state = this.state;
    if (state is QuizForAdultLoaded) {
      emit(QuizForAdultLoaded(
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
    if (state is QuizForAdultLoaded) {
      emit(QuizForAdultLoaded(
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
