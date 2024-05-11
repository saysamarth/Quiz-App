import 'package:flutter/material.dart';
import 'package:quizapp/questions.dart';
import 'package:quizapp/questions_screen.dart';
import 'package:quizapp/start_screen.dart';
import 'package:quizapp/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> _selectedAnswer = [];
  var activeScreen = 'start_screen';

  //Widget? activeScreen;
  //@override
  //void initState() {
  //  activeScreen = StartScreen(switchscreen);
  //  super.initState();
  //}

  void switchscreen() {
    setState(() {
      activeScreen = 'question_screen';
    });
  }

  void chooseanswer(String answer) {
    _selectedAnswer.add(answer);

    if (_selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      _selectedAnswer = [];
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchscreen);
    if (activeScreen == 'question_screen') {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseanswer,
      );
    }

    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        chosenAnswers: _selectedAnswer,
        restartFunction: restartQuiz,
      );
    }
    //final screenWidget = activeScreen == 'start_screen'
    //    ? StartScreen(switchscreen)
    //    : const QuestionScreen();
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 62, 9, 169),
            Color.fromARGB(255, 94, 20, 131)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: screenWidget,
        ),
      ),
    );
  }
}
