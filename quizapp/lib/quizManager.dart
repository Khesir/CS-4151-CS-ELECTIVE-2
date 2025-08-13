import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/questionScreen.dart';
import 'package:flutter_application_1/screens/resultScreen.dart';
import 'package:flutter_application_1/screens/startScreen.dart';

class Quizmanager extends StatefulWidget {
  const Quizmanager({super.key});

  @override
  State<Quizmanager> createState() => _QuizmanagerState();
}

enum ActiveScreen { start, question, result }

class _QuizmanagerState extends State<Quizmanager> {
  Widget? activeScreen;

  @override
  void initState() {
    super.initState();
    switchScreen(ActiveScreen.start);
  }

  void switchScreen(ActiveScreen screen) {
    setState(() {
      switch (screen) {
        case ActiveScreen.start:
          activeScreen = StartScreen(switchScreen);
          break;
        case ActiveScreen.question:
          activeScreen = Questionscreen(switchScreen);
          break;
        case ActiveScreen.result:
          activeScreen = ResultScreen();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: activeScreen);
  }
}
