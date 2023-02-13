import 'package:flutter/material.dart';

class Tabbar3 extends StatelessWidget {
  const Tabbar3({Key? key}) : super(key: key);

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
          color: Colors.red,
        ),
      );
    });
  }
}
