// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ButtonWithIcon extends StatelessWidget {
  final String text;
  final IconData? icons;
  final double? borderRadius;
  final int? color;
  final int? textColor;
  final int? iconColor;
  final double? textFontSize;
  final FontWeight? textFontWeight;
  final IconData? rightIcons;
  final double? height;
  final double? iconSize;
  final Function? onPressed;

  const ButtonWithIcon({
    Key? key,
    required this.text,
    this.icons,
    this.borderRadius,
    this.color,
    this.textFontSize,
    this.textFontWeight,
    this.rightIcons,
    this.height,
    this.iconSize,
    this.onPressed,
    this.textColor,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          if (onPressed != null) {
            onPressed!();
          }
        },
        style: ElevatedButton.styleFrom(
          fixedSize: const Size.fromHeight(40.0),
          backgroundColor: Color(color ?? 0xFF26bfa1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 5.0),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icons != null) ...[
              Icon(
                icons,
                size: iconSize ?? 24.0,
                color: Color(textColor ?? 0xFFffffff),
              ),
              const SizedBox(
                width: 5,
              ),
            ],
            Text(
              text,
              style: TextStyle(
                color: Color(textColor ?? 0xFFffffff),
                fontSize: textFontSize ?? 16.0,
                fontWeight: textFontWeight ?? FontWeight.w400,
              ),
            ),
            if (rightIcons != null) ...[
              const SizedBox(
                width: 5,
              ),
              Icon(
                rightIcons,
                size: iconSize ?? 24.0,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
