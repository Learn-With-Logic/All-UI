import 'package:flutter/material.dart';


class BubbleStories extends StatelessWidget {
  final String person;
  const BubbleStories({Key? key,required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(children: [
        Container(
          height: 60,
          width: 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey,

          ),
        ),
        const SizedBox(height: 10,),
        Text(person),
      ],),
    );
  }
}
