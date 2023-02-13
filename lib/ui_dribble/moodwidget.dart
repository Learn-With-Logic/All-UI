import 'package:flutter/material.dart';


class MoodWidget extends StatelessWidget {

  final String icon;
  final String label;

  const MoodWidget({Key? key,required this.icon,required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(width: 1,color: Colors.white38),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            icon,
            style: TextStyle(fontSize: 28),
          ),
        ),
        SizedBox(height: 10,),
        Text(label,style: TextStyle(fontSize: 16,color: Colors.blue[100]),),
      ],
    );
  }
}
