import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  const CardInfo(this.icon, this.label, this.content, {Key? key}) : super(key: key);
  final Icon icon;
  final String label;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.grey[400],
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 4.0),
            child: Row(
              children: [
                icon,
                const SizedBox(width: 2.0),
                Text(
                  label,
                  style: const TextStyle(
                    color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 1.0),
        Text(
          content,
          style: const TextStyle(
              color: Colors.black,
              fontSize: 12.0,
              fontWeight: FontWeight.w500
          ),
        )
      ],
    );
  }
}
