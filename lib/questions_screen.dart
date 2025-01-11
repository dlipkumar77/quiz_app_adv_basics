import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import './answer_button.dart';
import './data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  //const QuestionsScreen({super.key});
  const QuestionsScreen({super.key, required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;

  @override
  _QuestionsScreenState createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectAnswer) {
    widget.onSelectAnswer(selectAnswer);
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
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 201, 153, 251),
              ),
              // style: GoogleFonts.lato(
              //   fontSize: 24,
              //   fontWeight: FontWeight.bold,
              //   color: const Color.fromARGB(255, 201, 153, 251),
              // ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            //...currentQuestion.answers.map((item) {
            ...currentQuestion.getShuffledAnswer().map((item) {
              return AnswerButton(
                  answerText: item,
                  onTap: () {
                    answerQuestion(item);
                  });
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
