import 'package:begintoexp/text_widget.dart';
import 'package:flutter/material.dart';
import 'dart:math';

Random randomize = Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {

  var currentDiceRoll1 = 1;
  var currentDiceRoll2 = 1;
  void rollDice() {
    setState(() {
      currentDiceRoll1 = randomize.nextInt(6) + 1;
      currentDiceRoll2 = randomize.nextInt(6) + 1;
    });
  }


  @override
  Widget build(BuildContext context) {
    return  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Image.asset('assets/images/dice-$currentDiceRoll1.png',
            width: 200,
            height: 200,
          ),
           Image.asset('assets/images/dice-$currentDiceRoll2.png',
            width: 200,
            height: 200,
          ),
      
            ],
          ),
         
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {
              rollDice();
            },
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 198, 39, 142),
              foregroundColor: Colors.black,
              padding: const EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Roll Dice',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 224, 168, 168),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          currentDiceRoll1==currentDiceRoll2 ? TextWidget(text: 'You rolled double $currentDiceRoll1') 
          : TextWidget(text: 'You rolled $currentDiceRoll1 , $currentDiceRoll2'),

          
        ],
    );
  }
}