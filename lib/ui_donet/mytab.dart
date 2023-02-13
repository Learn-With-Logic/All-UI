import 'package:flutter/material.dart';


class MyTab extends StatelessWidget {
  final String iconpath;

  const MyTab({Key? key,required this.iconpath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[200],
        ),
        child: Image.asset(iconpath,color: Colors.grey[600],),
      ),

    );
  }
}
