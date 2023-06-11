import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/gen/colors.gen.dart';

class GenderSelection extends StatelessWidget {
  const GenderSelection({
    Key? key,
    required this.label,
    required this.listTitle,
  }) : super(key: key);

  final String label;
  final List<String> listTitle;

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
            Container(
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(4.0),
              ),
              padding:
                  const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
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
        const SizedBox(height: 13.0),
        Row(
          children: [
            CustomButton(
              text: listTitle[0],
              onPressed: () {},
            ),
            const SizedBox(width: 10),
            CustomButton(
              text: listTitle[1],
              onPressed: () {},
            ),
            const SizedBox(width: 10),
            CustomButton(
              text: listTitle[2],
              onPressed: () {},
            ),
          ],
        )
      ],
    );
  }
}

class CustomButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: isPressed ? Colors.transparent : Colors.grey,
        ),
        borderRadius: BorderRadius.circular(20.0),
        color: isPressed ? ColorName.primaryStepColor : Colors.transparent,
      ),
      child: TextButton(
        onPressed: () {
          setState(() {
            isPressed = !isPressed;
          });
          widget.onPressed();
        },
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: 13.0,
            color: isPressed ? Colors.white : Colors.grey,
          ),
        ),
      ),
    );
  }
}
