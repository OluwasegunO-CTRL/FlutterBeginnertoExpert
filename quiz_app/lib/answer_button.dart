import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  const AnswerButton({
    super.key,
    required this.answertext,
    required this.onTap
  });

  final String answertext;
  final void Function() onTap;

  @override
  Widget build(congtext) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          maximumSize: const Size(300, 50),
          // minimumSize: const Size(100, 50),
          // fixedSize: const Size(300, 50),
        ),
        child: Text(
          answertext, 
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
          )
        );
  
  }
}