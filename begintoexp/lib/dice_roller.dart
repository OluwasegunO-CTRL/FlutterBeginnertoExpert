import 'package:begintoexp/text_widget.dart';
import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

@override
  State<DiceRoller> createState() => _DiceRollerstate();
}

class _DiceRollerstate extends State<DiceRoller>{
 var currentDiceRoll1 = 2;
 var currentDiceRoll2 = 2;

void rollDice() {
  // Generate a random number between 1 and 6  
  setState(() {
    currentDiceRoll1 = randomizer.nextInt(6) + 1;
    currentDiceRoll2 = randomizer.nextInt(6) + 1;
  });
  }

@override
   Widget build(context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset(
          'assets/images/dice-$currentDiceRoll1.png',
            width: 200,
            height: 200,
        ),
        Image.asset(
          'assets/images/dice-$currentDiceRoll2.png',
            width: 200,
            height: 200,
        ),
          ]
        ),
        SizedBox(
          height: 20,
        ),
         (currentDiceRoll1 == currentDiceRoll2) ?
          TextWidget(text: 'You rolled double $currentDiceRoll1') :
        TextWidget(text: 'You rolled $currentDiceRoll1, $currentDiceRoll2'),
         SizedBox( height: 20,
        ),
        TextButton(
          onPressed: rollDice, 
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            padding: const EdgeInsets.all(16),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            textStyle: const TextStyle(
            fontSize: 20,
            ),
          ),
          child: Text('Roll Dice'),
        ),
      ] 
    );
   }
  }
