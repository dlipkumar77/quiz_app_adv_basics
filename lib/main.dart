import 'package:flutter/material.dart';
import './start_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: StartScreen(),
    ),
  ));
}
