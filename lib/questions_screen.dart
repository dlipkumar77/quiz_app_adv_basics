import 'package:flutter/material.dart';

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
          Text('What are the main building blocks of Flutter UIs?'),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: Text('Widgets'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Blocks'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Bricks'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Pieces'),
          ),
        ],
      ),
    );
  }
}
