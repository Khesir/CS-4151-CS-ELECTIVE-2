import 'package:flutter/material.dart';
import 'package:flutter_application_1/quizManager.dart';
import 'package:flutter_application_1/widget/ChoiceButton.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.activateScreen, {super.key});
  final void Function(ActiveScreen) activateScreen;
  @override
  Widget build(BuildContext context) {
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
            Image.asset('assets/quiz-logo.png', width: 300),
            const SizedBox(height: 100),
            ChoiceButton(activateScreen),
          ],
        ),
      ),
    );
  }
}
