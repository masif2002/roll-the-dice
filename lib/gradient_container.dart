import 'package:flutter/material.dart';

import 'package:first_app/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.gradientColors, {super.key});

  GradientContainer.purple({super.key})
      : gradientColors = [
          Colors.deepPurple,
          Colors.deepPurpleAccent,
        ];

  final List<Color> gradientColors;

  void rollDice() {
    // ....
  }

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
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-1.png',
              width: 200,
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: rollDice,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.only(
                  left: 40,
                  right: 40,
                  top: 20,
                  bottom: 20,
                ),
                foregroundColor: Colors.black,
                backgroundColor: Colors.amberAccent,
                textStyle: const TextStyle(
                  fontSize: 36,
                ),
              ),
              child: const Text('Roll the Dice'),
            )
          ],
        ),
      ),
    );
  }
}
