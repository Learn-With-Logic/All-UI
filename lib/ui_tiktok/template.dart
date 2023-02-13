import 'package:flutter/material.dart';

class Template extends StatelessWidget {
  final String username;
  final String postdetail;
  final String num_of_messages;
  final String num_of_likes;
  final String num_of_sends;

  const Template({Key? key,required this.username,required this.postdetail,required this.num_of_likes,required this.num_of_messages,required this.num_of_sends}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            //alignment: Alignment(-1,1),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(username,style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: 4),
                Text(postdetail),

              ],),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment(1,1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.favorite,size: 40,),
                Text(num_of_likes),
                SizedBox(height: 10,),
                Icon(Icons.chat_bubble_outline,size: 40),
                Text(num_of_messages),
                SizedBox(height: 10,),

                Icon(Icons.send,size: 40),
                Text(num_of_sends),
              ],
            ),
          ),
        )
      ],),
    );
  }
}
