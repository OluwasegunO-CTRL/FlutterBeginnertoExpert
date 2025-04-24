import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz ({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];


  //This is an initialization of currrentScreen to use for the InitState
  // Widget? currentScreen;
  var currentScreen = 'start-screen';
  
  //This the initState 
  // @override
  // void initState() {
  //   currentScreen =  StartScreen(startQuiz: switchScreen);
  //   super.initState();
  // }

  //This is the setState instead using the string/tenary condition method
  // void switchScreen () {
  //   setState(() {
  //     currentScreen =  QuestionScreen();
  //   });
  // }

  void switchScreen () {
    setState(() {
      currentScreen = 'QuestionScreen';
    });
  }

  // This is the fuction for adding answers to the list when pressed
  // and to check if the length of the selectedAnswers is equal to the questions.length
  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

  // this is the setState to check if the selectedAnswers.length is equal to the questions.length
    if (selectedAnswers.length == questions.length) { 
        setState(() {
          // we added the empty list to clear the selectedAnswers
          // and set the currentScreen to start-screen
          // selectedAnswers = [];
          currentScreen = 'result-screen';
        });
    }
  }

  void resetQuiz() {
    setState(() {
      selectedAnswers = [];
      currentScreen = 'start-screen';
    });
  }

  @override
  Widget build(context){
    // This is initalization of screenwidget to startScreen. The first initial screen when app is lauched

  Widget screenWidget = StartScreen(startQuiz: switchScreen);

  // This is the setState to check if the currentScreen is equal to QuestionScreen
  // calling currentScreen from switchScreen function
  if(currentScreen == 'QuestionScreen'){
    screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer);
  }

  if (currentScreen == 'result-screen'){
    screenWidget = ResultScreen(chosenAnswers: selectedAnswers, resetQuiz: resetQuiz,);
  }
  
    return Center(
      child: GradientContainer(
          colors: [
            Colors.deepPurple,
            Colors.purpleAccent,
          ],
          child: screenWidget
          ),
    );
  } 
}