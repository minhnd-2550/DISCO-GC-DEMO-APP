import 'package:flutter/material.dart';

class TextDescription extends StatelessWidget {
  final String text;
  const TextDescription({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 12.0, color: Colors.black.withOpacity(0.85)),
    );
  }
}
