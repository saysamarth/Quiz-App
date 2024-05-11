import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/quiz-logo.png',
          width: 250,
          color: const Color.fromARGB(224, 140, 126, 184),
        ),
        const SizedBox(height: 50),
        const Text('Learn Flutter the fun way!',
            style: TextStyle(
                color: Color.fromARGB(212, 255, 255, 255), fontSize: 23)),
        const Padding(padding: EdgeInsets.only(bottom: 30)),
        OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(236, 255, 255, 255),
                padding: const EdgeInsets.all(10),
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'))
      ],
    ));
  }
}
