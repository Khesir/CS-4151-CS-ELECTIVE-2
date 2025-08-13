import 'package:flutter/material.dart';

class MagicBallWidget extends StatefulWidget {
  const MagicBallWidget({super.key});
  @override
  State<StatefulWidget> createState() => _MagicBallWidgetState();
}

class _MagicBallWidgetState extends State<MagicBallWidget> {
  String ballImage = 'assets/images/1.png';

  void shake() {
    setState(() {
      int randomIndex =
          (DateTime.now().millisecondsSinceEpoch / 1000).round() % 5 + 1;
      ballImage = 'assets/images/$randomIndex.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const StyleText('Hello World'),
          SizedBox(height: 20),
          Image.asset(ballImage, width: 300),
          TextButton(
            onPressed: shake,
            child: const Text(
              "Shake",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w700,
                letterSpacing: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StyleText extends StatelessWidget {
  final String text;

  const StyleText(this.text, {super.key});
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: 24, color: Colors.white));
  }
}
