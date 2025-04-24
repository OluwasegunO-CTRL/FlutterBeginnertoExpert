import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';


class QuestionScreen extends StatefulWidget {
  const QuestionScreen({
    super.key,
    required this.onSelectAnswer
  });

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {

  int currentQuestionIndex = 0; 

  void startQuestion ( String selectedAnswers) {
    widget.onSelectAnswer(selectedAnswers);
    
    setState(() {
      currentQuestionIndex++;
      // or currentQuestionIndex = currentQuestionIndex + 1;
      // or currentQuestionIndex += 1;
    });
  }

  @override
  Widget build (context){
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
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            // TextStyle(
            //   color: Colors.white,
            //   fontSize: 23,
            // ),
            textAlign: TextAlign.center,
            ),
            SizedBox(height: 30,),
            ...currentQuestion.getShuffledAnswers().map((answer){
              return AnswerButton(
                answertext: answer, 
                onTap: () {
                  // we use this becuase ontap is a void function not wanting an arguement
                  startQuestion(answer);
                }
                );
            }),
            // AnswerButton(
            //   answertext: currentQuestion.answers[0],
            //   onTap: () {}
            // ),
          ],
        ),
      ),
    );
  }
}