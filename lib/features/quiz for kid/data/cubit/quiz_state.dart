// lib/features/quiz_for_kid/presentation/cubit/quiz_for_kids_state.dart
import 'package:equatable/equatable.dart';

abstract class QuizForKidsState extends Equatable {
  @override
  List<Object?> get props => [];
}

class QuizForKidsInitial extends QuizForKidsState {}

class QuizForKidsLoading extends QuizForKidsState {}

class QuizForKidsLoaded extends QuizForKidsState {
  final List<Map<String, dynamic>> questionsList;
  final List<Map<String, dynamic>> answersList;
  final int currentQuestionIndex;
  final int score;
  final bool isPressedOn;
  final Map<String, dynamic>? selectedAnswer;

  QuizForKidsLoaded({
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

class QuizForKidsError extends QuizForKidsState {
  final String error;

  QuizForKidsError(this.error);

  @override
  List<Object?> get props => [error];
}
