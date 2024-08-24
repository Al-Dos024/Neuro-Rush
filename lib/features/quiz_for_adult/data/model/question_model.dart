class Question {
  final String questionText;
  final List<Answer> answersList;
  final List<String> examplesList;

  Question(this.questionText, this.answersList, this.examplesList);
}

class Answer {
  final String answerText;
  final int points;

  Answer(this.answerText, this.points);
}
