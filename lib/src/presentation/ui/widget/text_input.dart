import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  const TextFieldInput({
    Key? key,
    required this.label,
    required this.isRequired,
    required this.prefixIcon,
    this.isVisible,
  }) : super(key: key);

  final String label;
  final bool isRequired;
  final Icon prefixIcon;
  final bool? isVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              label,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(width: 4.0),
            if (isRequired)
              Container(
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(4.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
                child: const Text(
                  '必須',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 8.0),
        TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            border: const OutlineInputBorder(),
            prefixIcon: prefixIcon,
            suffixIcon: isVisible != null
                ? IconButton(
                  onPressed: () {},
                  icon: Icon(isVisible == true ? Icons.visibility : Icons.visibility_off),
            )
                : null,
          ),
          obscureText: isVisible == true,
        ),
      ],
    );
  }
}