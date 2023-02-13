import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {

  final String user;

  const UserPost({
    Key? key,required this.user
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Row(children: [
            Container(
              height: 40,width: 40,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle
              ),
            ),
            SizedBox(width: 4,),
            Text(user),
          ],),
          Icon(Icons.menu),
        ],),
      ),


      Container(
        height: 300,
        color: Colors.grey.shade300,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Row(children: [
          Icon(Icons.favorite,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.chat_bubble),
          ),
          Icon(Icons.share),
        ],),
        Icon(Icons.bookmark),
      ],),
      SizedBox(height: 10,),

      Row(children: [
        Text('Liked by ',style: TextStyle(fontSize: 18),),
        Text(user,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
        Text(' and ',style: TextStyle(fontSize: 18),),
        Text('others',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
      ],),

      SizedBox(height: 10,),

      RichText(text: TextSpan(
        style: TextStyle(fontSize: 16,color: Colors.black),
        children: [
          TextSpan(
            text: user,
            text: user,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(text: ' One Teaches, two learns'),
        ]
      )),

    ],);
  }
}
