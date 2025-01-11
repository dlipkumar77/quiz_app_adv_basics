import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      // summaryData is list column only accepts list widgets not again list
      children: summaryData.map((data) {
        return Row(children: [
          Text(((data['question_index'] as int) + 1).toString()),
          Column(
            children: [
              Text(data['question'] as String),
              SizedBox(height: 5),
              Text(data['user_answer'] as String),
              SizedBox(height: 3),
              Text(data['correct_answer'] as String),
            ],
          )
        ]);
      }).toList(),
    );
  }
}
