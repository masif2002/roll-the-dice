import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  // Gradient Colors
  const List<Color> colors = [
    Color.fromARGB(255, 173, 18, 85),
    Color.fromARGB(255, 9, 113, 73),
  ];

  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer.purple(),
      ),
    ),
  );
}
