import 'package:flutter/material.dart';


class ColorDot extends StatelessWidget {

  final Color color;
  final bool isselected;

  ColorDot({required this.color,this.isselected=false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10,right: 10),
      padding: EdgeInsets.all(4),
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.circle,

      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle
        ),

      ),
    );
  }
}
