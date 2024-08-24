import 'package:equatable/equatable.dart';

abstract class QuizForAdultState extends Equatable {
  @override
  List<Object?> get props => [];
}

class QuizForAdultInitial extends QuizForAdultState {}

class QuizForAdultLoading extends QuizForAdultState {}

class QuizForAdultLoaded extends QuizForAdultState {
  final List<Map<String, dynamic>> questionsList;
  final List<Map<String, dynamic>> answersList;
  final int currentQuestionIndex;
  final int score;
  final bool isPressedOn;
  final Map<String, dynamic>? selectedAnswer;

  QuizForAdultLoaded({
    required this.questionsList,
    required this.answersList,
    required this.currentQuestionIndex,
    required this.score,
    required this.isPressedOn,
    required this.selectedAnswer,
  });

  @override
  List<Object?> get props => [
        questionsList,
        answersList,
        currentQuestionIndex,
        score,
        isPressedOn,
        selectedAnswer
      ];
}

class QuizForAdultError extends QuizForAdultState {
  final String error;

  QuizForAdultError(this.error);

  @override
  List<Object?> get props => [error];
}
