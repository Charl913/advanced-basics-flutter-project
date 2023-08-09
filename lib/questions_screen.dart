import 'package:advanced_basics/answer_button.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return const SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'The Question...',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 30,
          ),
          AnswerButton(
            answerText: 'The answer ...',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
