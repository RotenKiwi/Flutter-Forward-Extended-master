import 'package:flutter/material.dart';
import '../Constants.dart' as constants;

class formField extends StatelessWidget {
  final String text;
  final Size size;
  final bool isPassword;
  final Function(String) onChanged;

  const formField({
    super.key,
    required this.size,
    required this.text,
    required this.isPassword, required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: TextField(
        autofocus: true,
        onChanged: onChanged,
        style: const TextStyle(
          color: constants.dayPrimary,
        ),
        obscureText: isPassword,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
                color: constants.dayPrimary,
                width: 2,
                style: BorderStyle.solid),
          ),
          hintText: text,
          hintStyle: TextStyle(
            color: constants.dayPrimaryFade,
            fontSize: size.width * 0.04,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}
