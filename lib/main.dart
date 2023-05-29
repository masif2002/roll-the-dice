import 'package:flutter/material.dart';

import 'package:roll_the_dice/gradient_container.dart';

void main() {
  // Gradient Colors
  const List<Color> colors = [
    Color.fromARGB(255, 0, 0, 70),
    Color.fromARGB(255, 28, 181, 224),
  ];

  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors),
      ),
    ),
  );
}
