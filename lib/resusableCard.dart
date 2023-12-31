import 'package:flutter/material.dart';

class ReuseCard extends StatelessWidget {
  final Color colour;
  final Widget reuseChild;
  final Function onPress;
  ReuseCard({@required this.colour, this.reuseChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: reuseChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}
