import 'package:flutter/material.dart';

class DynamicFormFieldLabel extends StatelessWidget {
  final String? labelText;
  final Widget child;
  final bool? required;

  const DynamicFormFieldLabel(
      {Key? key, this.labelText, required this.child, this.required})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (labelText != null)
              Flexible(
                child: Text(
                  labelText!,
                  style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            if (required != null)
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 3.0, horizontal: 6.0),
                margin: const EdgeInsets.only(left: 8.0),
                decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(4.0))),
                child: const Text(
                  "必須",
                  style: TextStyle(color: Colors.white, fontSize: 12.0),
                ),
              )
          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
        child,
      ],
    );
  }
}
