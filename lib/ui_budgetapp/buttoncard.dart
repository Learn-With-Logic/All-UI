import 'package:flutter/material.dart';

class ButtonCard extends StatelessWidget {
  final icon;
  final String caption;

  const ButtonCard({Key? key,required this.icon,required this.caption}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 20,
                spreadRadius: 4,
              ),

            ]

        ),
        padding: EdgeInsets.all(20),
        height: 80,
        child: Center(
          child: icon,
        ),
      ),
      SizedBox(height: 12,),
      Text(caption),
    ],);
  }
}
