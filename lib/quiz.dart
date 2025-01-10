import 'package:flutter/material.dart';
import './start_screen.dart';
import './questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  //Widget activeScreen = StartScreen(switchScreen);
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      //activeScreen = QuestionsScreen();
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    // final screenWidget = activeScreen == 'start-screen'
    //     ? StartScreen(switchScreen)
    //     : QuestionsScreen();

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //title: Text('Quiz App'),
          backgroundColor: const Color.fromARGB(255, 73, 5, 150),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color.fromARGB(255, 78, 13, 151),
                const Color.fromARGB(255, 107, 15, 168)
              ],
            ),
          ),
          //child: activeScreen,
          child: screenWidget,
        ),
      ),
    );
  }
}
