import 'package:advanced_basics/data/questions.dart';
import 'package:advanced_basics/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:advanced_basics/start_screen.dart';
import 'package:advanced_basics/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
<<<<<<< HEAD
  List<String> selectedAnswers = [];
=======
  final List<String> selectedAnswers = [];
>>>>>>> a6b6fefa9f7c0c7bbb8feecd2f1e3172b905c43c
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
<<<<<<< HEAD

    if(selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'results-screen';
      });
    }
=======
>>>>>>> a6b6fefa9f7c0c7bbb8feecd2f1e3172b905c43c
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
<<<<<<< HEAD
    }

    if(activeScreen == 'results-screen') {
      screenWidget = const ResultsScreen();
=======
>>>>>>> a6b6fefa9f7c0c7bbb8feecd2f1e3172b905c43c
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 88, 10, 221),
                Color.fromARGB(255, 142, 19, 190),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
