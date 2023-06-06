import 'package:flutter/material.dart';

class UnSeenText extends StatelessWidget {
  final String text;
  const UnSeenText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFF2F2F2),
            Color(0xFFF2F2F2),
            Color.fromRGBO(0, 0, 0, 0.1),
            Color.fromRGBO(0, 0, 0, 0.1),
          ],
          stops: [0.0, 0.5, 0.5, 1.0],
          begin: Alignment(0.1, 0.1),
          end: Alignment(0.2, 0.2),
          transform: GradientRotation(136.0),
          tileMode: TileMode.repeated,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3.0),
        child: Text(
          text,
          style: const TextStyle(fontSize: 14.0, color: Colors.black),
        ),
      ),
    );
  }
}
