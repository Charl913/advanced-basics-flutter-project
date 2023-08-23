import 'package:advanced_basics/questions_summary/question_identifier.dart';
import 'package:flutter/material.dart';

class SummaryItems extends StatelessWidget {
  const SummaryItems(this.itemData, {super.key});
  final Map<String, Object> itemData;

  @override
  Widget build(context) {
    final bool isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            itemData['question_index'] as int,
            isCorrectAnswer,
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData['question'] as String,
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  itemData['user_answer'] as String,
                  style: const TextStyle(color: Colors.red),
                ),
                Text(
                  itemData['correct_answer'] as String,
                  style: const TextStyle(color: Colors.cyan),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
