import 'package:flutter/material.dart';

double size = 48;

class StyledText extends StatelessWidget {
  const StyledText({super.key});

  @override
  Widget build(context) {
    return Text(
      'Hello World',
      style: TextStyle(
        color: const Color.fromARGB(255, 255, 255, 255),
        fontSize: size,
      ),
    );
  }
}
