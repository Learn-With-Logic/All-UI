import 'package:flutter/material.dart';

class Tabbar2 extends StatelessWidget {
  const Tabbar2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ), itemBuilder: (context,index){
      return Padding(
        padding: EdgeInsets.all(4),
        child: Container(
          color: Colors.green,
        ),
      );
    });
  }
}
