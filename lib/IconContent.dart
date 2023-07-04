import 'package:flutter/material.dart';
import 'Constants.dart';

class IconContent extends StatelessWidget {
  final IconData iconType;
  final String iconText;

  IconContent({this.iconType, this.iconText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconType,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          iconText,
          style: kStyleText,
        )
      ],
    );
  }
}
