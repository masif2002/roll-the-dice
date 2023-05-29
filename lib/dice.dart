import 'package:flutter/material.dart';

import 'dart:math';

final randomizer = Random();

// Actual Widget Class
class Dice extends StatefulWidget {
  // The actual widget remains const. But the constructor of _DiceState is not const (because it maintains the state which may change)
  const Dice({super.key});

  @override
  State<Dice> createState() {
    return _DiceState();
  }
}

// Class that maintains the state of the widget
class _DiceState extends State<Dice> {
  var randomNum = 2;

  void rollDice() {
    setState(() {
      // Range 1 - 6
      randomNum = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 300,
          child: Image.asset(
            'assets/images/dice-$randomNum.png',
            width: 200,
          ),
        ),
        const SizedBox(
          height: 200,
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
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            foregroundColor: Colors.black,
            backgroundColor: Colors.amberAccent,
            textStyle: const TextStyle(
              fontSize: 24,
            ),
          ),
          child: const Text('Roll the Dice'),
        )
      ],
    );
  }
}
