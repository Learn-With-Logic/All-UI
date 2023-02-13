import 'package:flutter/material.dart';

class ExerciseTileWidget extends StatelessWidget {

  final IconData icondata;
  final String title;
  final int number;
  final color;

  const ExerciseTileWidget({Key? key,required this.color,required this.icondata,required this.title,required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        decoration: BoxDecoration(
          color: color[50],
          borderRadius: BorderRadius.circular(20),
        ),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Container(
                child: Icon(icondata,size: 24,color: Colors.white,),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: color[400]
                ),),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  SizedBox(height: 5,),
                  Text('$number Exercises'),
                ],),
            ],),
            Icon(Icons.more_horiz,size: 20,),
          ],) ,
      ),
    );
  }
}
