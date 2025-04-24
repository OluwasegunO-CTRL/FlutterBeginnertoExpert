import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultScreen extends StatelessWidget{
  const  ResultScreen({
    super.key,
    required this.chosenAnswers,
    required this.resetQuiz,
  });

  final void Function() resetQuiz;

  List <Map<String, Object>> getSummaryData() {
    final List <Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i],
      });
    }

    return summary;
  }

  

final List <String> chosenAnswers;

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 255, 255, 255),
                ),
              textAlign: TextAlign.center,
              ),
            SizedBox(height: 30,),
            QuestionsSummary(summaryData),
            SizedBox(height: 30,),
            TextButton.icon(
              onPressed: resetQuiz,
              icon: Icon(Icons.refresh, size: 30,
              color: Colors.white,),
              label: Text('Restart quiz!',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),),
              )


        ],
        )
      )
    );
  }
}