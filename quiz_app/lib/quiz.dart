import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz ({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? currentScreen;
  
  @override
  void initState() {
    currentScreen =  StartScreen(startQuiz: switchScreen);
    super.initState();
  }

  void switchScreen () {
    setState(() {
      currentScreen =  QuestionScreen();
    });
  }


  @override
  Widget build(context){
    return Center(
      child: GradientContainer(
          colors: [
            Colors.deepPurple,
            Colors.purpleAccent,
          ],
          child: currentScreen,
          ),
    );
  } 
}