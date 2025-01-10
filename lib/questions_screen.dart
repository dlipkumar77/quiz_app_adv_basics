import 'package:flutter/material.dart';
import './answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  _QuestionsScreenState createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'What are the main building blocks of Flutter UIs?',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 20),
          AnswerButton(
            answerText: 'Widgets',
            onTap: () {},
          ),
          SizedBox(height: 20),
          AnswerButton(
            answerText: 'Classes',
            onTap: () {},
          ),
          SizedBox(height: 20),
          AnswerButton(
            answerText: 'Modules',
            onTap: () {},
          ),
          SizedBox(height: 20),
          AnswerButton(
            answerText: 'Packages',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
