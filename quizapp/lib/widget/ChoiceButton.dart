import 'package:flutter/material.dart';
import 'package:flutter_application_1/quizManager.dart';

class ChoiceButton extends StatelessWidget {
  const ChoiceButton(this.activateScreen, {super.key});
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
