import 'package:flutter/material.dart';

class cvDetailsContainer extends StatelessWidget {
  final String text;
  final double height;
  const cvDetailsContainer({Key? key, required this.text, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white, // Border color
            width: 1,
          ),
          color: Color.fromARGB(255, 237, 246, 249),
          borderRadius: BorderRadius.circular(12)),
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[600],
            ),
          ),
        ),
      ),
    );
  }
}