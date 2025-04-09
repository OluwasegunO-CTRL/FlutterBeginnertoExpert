import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: const TextStyle(
        fontSize: 28,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}