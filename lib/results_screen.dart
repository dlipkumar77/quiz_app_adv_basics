import 'package:flutter/material.dart';
import './questions_summary.dart';
import './data/questions.dart';
//import './results_screen.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.choosenAnswers,
    required this.reStartQuiz,
  });

  final List<String> choosenAnswers;
  final void Function() reStartQuiz;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'user_answer': choosenAnswers[i],
        'correct_answer': questions[i].answers[0],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummary();
    var numTotalQuestions = questions.length;
    var numCorrectAnswers = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectAnswers out of $numTotalQuestions questions correctly!',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Couleur blanche
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //getSummary does not want any function value, its reutrn list of map that's why we use getSummary() not getsummary
            QuestionsSummary(summaryData),
            SizedBox(
              height: 20,
            ),
            TextButton.icon(
              onPressed: reStartQuiz,
              //onPressed: () {},
              icon: const Icon(Icons.refresh, color: Colors.white),
              label: Text(
                'Restart Quiz',
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.purple,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
