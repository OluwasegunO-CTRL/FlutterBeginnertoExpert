import 'package:begintoexp/dice_roller.dart';
import 'package:begintoexp/gradient_container.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        colors: [ 
        Color.fromARGB(255, 0, 255, 0),
        Color.fromARGB(255, 0, 0, 255),], 
        child: Center(
          child: DiceRoller(),
          ),
        ),

      );
  }
}