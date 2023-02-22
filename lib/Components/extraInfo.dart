import 'package:flutter/material.dart';
import '../Constants.dart' as constants;

class extraInfo extends StatelessWidget {
  const extraInfo({
    super.key,
    required this.size,
    required this.icon,
    required this.infoName,
    required this.value,
  });

  final Size size;
  final IconData icon;
  final String infoName;
  final String value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.3,
      child: Column(
        children: [
          Icon(
            icon,
            size: size.width * 0.08,
          ),
          Text(
            infoName,
            style: TextStyle(
              fontSize: size.width * 0.03,
              fontWeight: FontWeight.w400,
              fontFamily: 'SpaceMono',
              decoration: TextDecoration.none,
              color: constants.nightPrimary,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: size.width * 0.04,
              fontWeight: FontWeight.w500,
              fontFamily: 'SpaceMono',
              decoration: TextDecoration.none,
              color: constants.nightPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
