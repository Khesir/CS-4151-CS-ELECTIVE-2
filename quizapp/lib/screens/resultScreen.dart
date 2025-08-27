import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/questions.dart';
import 'package:flutter_application_1/models/QuizQuestion.dart';
import 'package:flutter_application_1/quizManager.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.activateScreen, this._selectedAnswers, {super.key});
  final void Function(ActiveScreen) activateScreen;

  final List<Map<String, int>> _selectedAnswers;
  void restartQuiz() {
    activateScreen(ActiveScreen.start);
    _selectedAnswers.clear();
  }

  @override
  Widget build(BuildContext context) {
    final numberofTotalQuestion = _selectedAnswers.length;
    final numberofCorrectAnswer = _selectedAnswers
        .where((data) => data['answer'] == data['correctAnswer'])
        .length;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 0, 85, 255),
            Color.fromARGB(255, 56, 20, 174),
            Color.fromARGB(255, 144, 17, 140),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'You answered $numberofCorrectAnswer out of $numberofTotalQuestion questions correctly!',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 100),
            Column(
              children: [
                ..._selectedAnswers.map(
                  (data) => ResultCard(
                    questions[data['question_index']!].question,
                    questions[data['question_index']!].answerIndex ==
                        data['answer'],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100),
            ActionButton(restartQuiz),
          ],
        ),
      ),
    );
  }
}

class ResultCard extends StatelessWidget {
  const ResultCard(this.question, this.isCorrect, {super.key});
  final String question;
  final bool isCorrect;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: isCorrect ? Colors.green : Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          question,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
            decoration: TextDecoration.none,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton(this.restartQuiz, {super.key});
  final VoidCallback? restartQuiz;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton(
          onPressed: restartQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            side: BorderSide(color: Colors.white, width: 1),
          ),
          child: Text(
            "Restart Quiz",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ],
    );
  }
}
