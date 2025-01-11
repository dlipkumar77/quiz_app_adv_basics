import 'package:flutter/material.dart';
import './answer_button.dart';
import './data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  _QuestionsScreenState createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.question,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 20),
          ...currentQuestion.answers.map((item) {
            return AnswerButton(answerText: item, onTap: () {});
          }),
          /*
          AnswerButton(
            answerText: currentQuestion.answers[0],
            onTap: () {},
          ),
          SizedBox(height: 20),
          AnswerButton(
            answerText: currentQuestion.answers[1],
            onTap: () {},
          ),
          SizedBox(height: 20),
          AnswerButton(
            answerText: currentQuestion.answers[2],
            onTap: () {},
          ),
          SizedBox(height: 20),
          AnswerButton(
            answerText: currentQuestion.answers[3],
            onTap: () {},
          ),
          */
        ],
      ),
    );
  }
}
