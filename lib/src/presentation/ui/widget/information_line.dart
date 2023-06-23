import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/un_seen_text.dart';

class InformationLine extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final bool seen;

  const InformationLine(
      {Key? key,
      required this.label,
      required this.value,
      required this.icon,
      required this.seen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 3.0),
            width: 170.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.0),
                color: const Color(0xFFb5b5b5)),
            child: Row(
              children: [
                Icon(
                  icon,
                  size: 24.0,
                  color: Colors.white,
                ),
                Text(
                  label,
                  style: const TextStyle(color: Colors.white, fontSize: 12.0),
                )
              ],
            ),
          ),
          if (seen) ...[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3.0),
              child: Text(
                value,
                style: const TextStyle(color: Colors.black, fontSize: 14.0),
              ),
            )
          ] else ...[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3.0),
              child: UnSeenText(text: value),
            )
          ],
          const SizedBox(
            height: 10.0,
          )
        ],
      ),
    );
  }
}
