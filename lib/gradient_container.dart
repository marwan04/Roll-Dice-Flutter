import 'package:flutter/material.dart';
import 'package:project1/dice_roller.dart';
import 'package:project1/styled_text.dart';

const start = Alignment.topLeft;
const end = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  // required this.colors
  const GradientContainer(this.color1, this.color2, {super.key});
  // super(key: key) ;
  final Color color1;
  final Color color2;
  

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: start,
          end: end,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
