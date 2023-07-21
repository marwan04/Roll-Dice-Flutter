import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

// var active = 'me/dice-2.png';
//   void rollDice() {
//     var num = Random().nextInt(6)+1;
//     setState(() {
//       active = 'me/dice-$num.png';
//     });
//   }
var num = 2;
  void rollDice() {
    setState(() {
      num = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'me/dice-$num.png',
              width: 200,
            ),
            // const SizedBox(height: 20,),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              child: const Text('Roll Dice'),
            )
          ],
        );
  }
}