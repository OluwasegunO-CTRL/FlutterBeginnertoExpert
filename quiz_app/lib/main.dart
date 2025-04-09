import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';


void main() {
  runApp(const Quizapp());
}

class Quizapp extends StatelessWidget {
  const Quizapp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Quiz(),
      )
      );
  }
}
 
