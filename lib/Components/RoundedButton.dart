import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function() press;
  final Color color, textColor;
  final Color borderColor;
  final Size length;
  final double fontsize;

  const RoundedButton({
    super.key,
    required this.text,
    required this.press,
    required this.color,
    required this.textColor,
    required this.length,
    borderColor, required this.fontsize,
  }) : borderColor = borderColor ?? color;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(45),
      child: Container(
        width: length.width,
        color: color,
        child: TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: borderColor,
                    width: 2.5,
                  ),
                  borderRadius: BorderRadius.circular(20)),
            ),
            onPressed: press,
            child: Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: fontsize,
                fontFamily: 'Inter',
              ),
            )),
      ),
    );
  }
}