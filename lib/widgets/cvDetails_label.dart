import 'package:flutter/material.dart';

class cvDetailsLabel extends StatelessWidget {
  final String label;
  const cvDetailsLabel({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        label,
        style: TextStyle(
          color: Color.fromARGB(255, 82, 144, 169),
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}