import 'package:flutter/material.dart';

class DynamicInput extends StatelessWidget {
  final bool isNonPasswordField;

  final TextEditingController controller;

  final VoidCallback? toggleObscureText;

  final bool obscureText;

  final FocusNode focusNode;

  final String? Function(String?)? validator;

  final Icon prefIcon;

  final String labelText;

  final String? hintText;

  final bool? required;

  final TextInputAction textInputAction;

  const DynamicInput(
      {Key? key,
      required this.isNonPasswordField,
      required this.controller,
      this.toggleObscureText,
      required this.obscureText,
      required this.focusNode,
      this.validator,
      required this.prefIcon,
      required this.labelText,
      required this.textInputAction,
      this.hintText,
      this.required})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Flexible(
              child: Text(
                labelText,
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
        TextFormField(
            controller: controller,
            decoration: InputDecoration(
              isDense: true,
              contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(0.0))),
              hintText: hintText,
              prefixIcon: prefIcon,
              suffixIcon: IconButton(
                onPressed: toggleObscureText,
                icon: isNonPasswordField
                    ? const Icon(null)
                    : obscureText
                        ? const Icon(
                            Icons.visibility,
                            size: 14.0,
                          )
                        : const Icon(Icons.visibility_off, size: 14.0),
              ),
            ),
            style: const TextStyle(fontSize: 14.0),
            focusNode: focusNode,
            textInputAction: textInputAction,
            obscureText: obscureText,
            validator: validator),
      ],
    );
  }
}
