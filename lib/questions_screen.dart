import 'package:flutter/material.dart';
import './answer_button.dart';
import './data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  _QuestionsScreenState createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      //currentQuestionIndex = currentQuestionIndex + 1;
      //currentQuestionIndex += 1; // same as above & increment by 2 use this currentQuestionIndex += 2;
      currentQuestionIndex++; // increment by 1 use this ++
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.question,
              style: TextStyle(fontSize: 18, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            //...currentQuestion.answers.map((item) {
            ...currentQuestion.getShuffledAnswer().map((item) {
              return AnswerButton(answerText: item, onTap: answerQuestion);
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
      ),
    );
  }
}
