import 'package:flutter/material.dart';
import 'package:untitled/ui_instagram/bubblestories.dart';

import '../userpost.dart';

class Page1 extends StatelessWidget {
   Page1({Key? key}) : super(key: key);


  List<String> persons=['irfan','David','Hynes','Keith','Jabor'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.logout,color: Colors.black,))
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text('Instagram',style: TextStyle(color: Colors.black),),
          Row(children: [
            Icon(Icons.add,color: Colors.black,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.favorite,color: Colors.black,),
            ),
            Icon(Icons.share,color: Colors.black,),
          ],)

        ],),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          Container(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: persons.length,
                itemBuilder: (context,index){
              return BubbleStories(person: persons[index]);
            }),
          ),

          //user post

          Expanded(
            child: ListView.builder(
                itemCount: persons.length,
                itemBuilder: (context,index){
              return UserPost(user: persons[index]);
            }),
          )


        ],),
      ),
    );
  }
}
