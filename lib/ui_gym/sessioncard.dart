import 'package:flutter/material.dart';

class SessionCard extends StatelessWidget {
  final int number;
  final bool isdone;
  final VoidCallback ontap;


  SessionCard({required this.number,this.isdone=false,required this.ontap});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          width: (constraints.maxWidth/2)-10,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 20,
                    spreadRadius: -13,
                    color: Colors.black),
              ]),
          padding: EdgeInsets.all(8.0),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: ontap,
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2,color: Colors.black),
                        shape: BoxShape.circle, color: Colors.white),
                    child: Icon(Icons.play_arrow,color: isdone?Colors.black:Colors.grey,),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    'Session $number',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 12),
                  )
                ],
              ),
            ),
          ),
        );

      },

    );
  }
}
