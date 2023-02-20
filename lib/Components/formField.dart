import 'package:flutter/material.dart';
import '../Constants.dart' as constants;

class formField extends StatelessWidget {
  final String text;
  final Size size;
  final bool password;

  const formField({
    super.key,
    required this.size,
    required this.text,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: TextFormField(
        style: TextStyle(
          color: constants.dayPrimary,
        ),
        obscureText: password,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: constants.dayPrimary,
                width: 2,
                style: BorderStyle.solid),
          ),
          hintText: text,
          hintStyle: TextStyle(
            color: constants.dayPrimaryFade,
            fontSize: size.width * 0.04,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}
