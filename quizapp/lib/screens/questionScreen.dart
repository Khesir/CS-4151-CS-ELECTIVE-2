import 'package:flutter/material.dart';
import 'package:flutter_application_1/quizManager.dart';

class Questionscreen extends StatelessWidget {
  Questionscreen(this.activateScreen, {super.key});
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
            const Text(
              "What is fluuter?",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                decoration: TextDecoration.none,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 30),
            ActionButton(activateScreen, "Answer 1"),
            ActionButton(activateScreen, "Answer 2"),
            ActionButton(activateScreen, "Answer 3"),
            ActionButton(activateScreen, "Answer 4"),
            const SizedBox(height: 30),
            OutlinedButton(
              onPressed: () => activateScreen(ActiveScreen.start),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                side: BorderSide(color: Colors.white, width: 1),
              ),
              child: Text("Back"),
            ), // Container(
            //   margin: const EdgeInsets.only(top: 50),
            //   decoration: BoxDecoration(
            //     border: Border.all(color: Colors.white, width: 2),
            //     borderRadius: BorderRadius.circular(8),
            //   ),
            //   child: const SizedBox(height: 50, width: 400, child:,),
            // ),
          ],
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton(this.activateScreen, this.text, {super.key});
  final void Function(ActiveScreen)? activateScreen;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
      child: SizedBox(
        width: 440,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(),
          child: Text(text),
        ),
      ),
    );
  }
}
