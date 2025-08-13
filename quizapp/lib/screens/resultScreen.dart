import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

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
            ActionButton(),
          ],
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

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
          onPressed: () => {},
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
