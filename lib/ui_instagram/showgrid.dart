import 'package:flutter/material.dart';


class ShowGrid extends StatelessWidget {
  final int gridnumber;
  const ShowGrid({Key? key,required this.gridnumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 100,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

      crossAxisCount: gridnumber,

    ), itemBuilder: (context,index){
      return Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          color: Colors.grey.shade200,
         child: Center(child: Text(index.toString())),
        ),
      );
    });
  }
}
