import 'package:flutter_application_1/models/QuizQuestion.dart';

final questions = [
  Quizquestion(
    question: 'Which widget is used for layout in Flutter?',
    choices: const ['Container', 'Column', 'Row', 'All of the above'],
    answerIndex: 3,
  ),
  Quizquestion(
    question: 'What command is used to create a new Flutter project?',
    choices: const [
      'flutter build',
      'flutter create',
      'flutter run',
      'flutter init',
    ],
    answerIndex: 1,
  ),
  Quizquestion(
    question: 'Which file contains the main entry point of a Flutter app?',
    choices: const ['main.dart', 'pubspec.yaml', 'app.dart', 'index.html'],
    answerIndex: 0,
  ),
  Quizquestion(
    question: 'Which widget allows user interaction in Flutter?',
    choices: const ['Text', 'GestureDetector', 'Image', 'Padding'],
    answerIndex: 1,
  ),
  Quizquestion(
    question: 'What is used to manage state in Flutter?',
    choices: const [
      'StatefulWidget',
      'StatelessWidget',
      'InheritedWidget',
      'All of the above',
    ],
    answerIndex: 3,
  ),
];
