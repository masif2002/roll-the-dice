import 'package:flutter/material.dart';

import 'package:roll_the_dice/dice.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.gradientColors, {super.key});

  GradientContainer.purple({super.key})
      : gradientColors = [
          Colors.deepPurple,
          Colors.deepPurpleAccent,
        ];

  final List<Color> gradientColors;

  

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Dice()
      ),
    );
  }
}
