class Question {
  final String questionText;
  final List<Answer> answersList;
  final List<String> examplesList;

  Question(this.questionText, this.answersList, this.examplesList);
}

class Answer {
  final String answerText;
  final int isCorrect;

  Answer(this.answerText, this.isCorrect);
}
