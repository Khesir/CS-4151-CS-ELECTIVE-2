class Quizquestion {
  final String question;
  final List<String> choices;
  final int answerIndex;

  Quizquestion({
    required this.question,
    required this.choices,
    required this.answerIndex,
  });

  bool isCorrect(int selectedIndex) {
    return selectedIndex == answerIndex;
  }
}
