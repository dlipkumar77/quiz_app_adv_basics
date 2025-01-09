import 'package:flutter/material.dart';
import './start_screen.dart';

void main() {
  runApp(MaterialApp(
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
        child: StartScreen(),
      ),
    ),
  ));
}
