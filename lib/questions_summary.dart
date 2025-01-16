import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          // summaryData is list column only accepts list widgets not again list
          children: summaryData.map((data) {
            final isCorrect = data['user_answer'] == data['correct_answer'];

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                CircleAvatar(
                    radius: 15,
                    backgroundColor: isCorrect
                        ? const Color.fromARGB(255, 150, 198, 241)
                        : const Color.fromARGB(255, 249, 133, 241),
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 23, 2, 56)),
                    )),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      //Text(data['user_answer'] as String),
                      Text(
                        'Your Answer: ${data['user_answer']}',
                        style: TextStyle(
                          color: Color.fromARGB(255, 249, 133, 241),
                        ),
                        // style: TextStyle(
                        //   color: isCorrect ? Colors.purpleAccent : Colors.pinkAccent,
                        // ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        'Correct answer: ${data['correct_answer']}',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 150, 198, 241)),
                      ),
                    ],
                  ),
                )
              ]),
            );
          }).toList(),
        ),
      ),
    );
  }
}
