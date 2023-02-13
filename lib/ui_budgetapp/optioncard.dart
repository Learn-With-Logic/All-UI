import 'package:flutter/material.dart';


class OptionCard extends StatelessWidget {

  final icon;
  final String title;
  final String subtitle;

  const OptionCard({Key? key,required this.icon,required this.title,required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(children: [

        Row(


          children:

          [
            Row(children: [
              Container(
                padding: EdgeInsets.all(20),
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),

                ),

                child: icon,
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  Text(subtitle),
                ],),
            ],),
            Icon(Icons.arrow_forward_ios),
          ],

          mainAxisAlignment: MainAxisAlignment.spaceBetween,)
      ],),
    );
  }
}
