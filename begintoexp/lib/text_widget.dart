import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget{
  const TextWidget ({super.key, required this.text});

  final String text;

  @override
  Widget build(context) {
    return Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
  }
}