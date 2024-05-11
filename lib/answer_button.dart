import 'package:flutter/material.dart';

class Answerbutton extends StatelessWidget {
  const Answerbutton({super.key, required this.answerText, required this.work});

  final String answerText;
  final Function() work;

  @override
  Widget build(context) {
    return ElevatedButton(
        onPressed: work,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            backgroundColor: const Color.fromARGB(255, 14, 8, 94),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40))),
        child: Text(answerText, textAlign: TextAlign.center));
  }
}
