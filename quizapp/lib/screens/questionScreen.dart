import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/QuizQuestion.dart';
import 'package:flutter_application_1/quizManager.dart';
import 'package:flutter_application_1/data/questions.dart';

class Questionscreen extends StatefulWidget {
  Questionscreen(this.activateScreen, this._selectedAnswers, {super.key});
  final void Function(ActiveScreen) activateScreen;
  final List<Map<String, int>> _selectedAnswers;

  @override
  State<Questionscreen> createState() => _QuestionscreenState();
}

class _QuestionscreenState extends State<Questionscreen> {
  final List<Quizquestion> _questions = questions;
  int _currentQuestionIndex = 0;
  void _nextQuestion(int index) {
    setState(() {
      widget._selectedAnswers.add({
        "question_index": _currentQuestionIndex,
        "correctAnswer": _questions[_currentQuestionIndex].answerIndex,
        "answer": index,
      });
      if (_currentQuestionIndex < _questions.length - 1) {
        _currentQuestionIndex++;
      } else {
        widget.activateScreen(ActiveScreen.result);
      }
    });
  }

  void _previousQuestion() {
    setState(() {
      if (_currentQuestionIndex > 0) {
        _currentQuestionIndex--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = _questions[_currentQuestionIndex];
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
                currentQuestion.question,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(height: 30),
            ...currentQuestion.choices.map(
              (choice) => ActionButton(() {
                _nextQuestion(currentQuestion.choices.indexOf(choice));
              }, choice),
            ),
            const SizedBox(height: 30),
            OutlinedButton(
              onPressed: () => _previousQuestion(),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                side: BorderSide(color: Colors.white, width: 1),
              ),
              child: Text(
                "Previous Question",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Question ${_currentQuestionIndex + 1} of ${_questions.length}',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
                decoration: TextDecoration.none,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton(this.onPressed, this.text, {super.key});
  final VoidCallback? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
      child: SizedBox(
        width: 440,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(),
          child: Text(text),
        ),
      ),
    );
  }
}
