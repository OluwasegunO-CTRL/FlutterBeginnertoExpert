import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build (context) {
    return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/quiz-logo.png',
                color: const Color.fromARGB(150, 255, 255, 255),
                width: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Learn Flutter the fun way!',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              OutlinedButton.icon(
                onPressed: (){}, 
                style: ElevatedButton.styleFrom(
                  backgroundColor:  const Color.fromARGB(255, 189, 8, 221),
                  foregroundColor: Colors.white,
                ),
                icon: Icon(Icons.play_arrow,
                color: Colors.white,),
                label: Text(
                  'Start Quiz',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )
              )
            ],
          ),
    );
  }
}