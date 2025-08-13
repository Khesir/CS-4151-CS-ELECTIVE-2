import 'package:flutter/material.dart';
import 'package:flutter_application_1/quizManager.dart';

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
            ActionButton(activateScreen),
          ],
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton(this.activateScreen, {super.key});
  final void Function(ActiveScreen) activateScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            decoration: TextDecoration.none,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(height: 30),
        OutlinedButton(
          onPressed: () => activateScreen(ActiveScreen.question),
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            side: BorderSide(color: Colors.white, width: 1),
          ),
          child: Text(
            "→ Start Quiz",
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
