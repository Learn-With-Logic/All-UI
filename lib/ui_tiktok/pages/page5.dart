import 'package:flutter/material.dart';
import 'package:untitled/ui_tiktok/tabpages/ThirdTab.dart';
import 'package:untitled/ui_tiktok/tabpages/secondtab.dart';

import '../tabpages/firsttab.dart';


class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text('Irfan Ganatra'),
          leading: Icon(Icons.person),
          actions: [IconButton(onPressed: (){
            Navigator.pop(context);

          }, icon: Icon(Icons.logout))],
        ),
        body: Column(children: [
          SizedBox(height: 20,),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle
            ),
          ),
          SizedBox(height: 20,),
          Text('Created by : Irfan'),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerRight,
               // color: Colors.red,
                child: Column(
                  children: [
                    Text('375',style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20),),
                    SizedBox(height: 4,),
                    Text('Following')
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
               // color: Colors.blue,
                child: Column(
                  children: [
                    Text('37',style: TextStyle(fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),),
                    SizedBox(height: 4,),
                    Text('Followers')
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
               // color: Colors.green,
                child: Column(
                  children: [
                    Text('7',style: TextStyle(fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),),
                    SizedBox(height: 4,),
                    Text('Likes'),
                  ],
                ),
              ),
            )
          ],),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey
                ),
                borderRadius: BorderRadius.circular(20),

              ),
              child: Text('Edit Profile'),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey
                  ),
                  borderRadius: BorderRadius.circular(20),

                ),
                child: Icon(Icons.camera),

              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey
                ),
                borderRadius: BorderRadius.circular(20),

              ),
              child: Icon(Icons.bookmark),


            )
          ],),
          Text('Bio here',style: TextStyle(fontSize: 20),),

          TabBar(tabs: [
            Tab(icon: Icon(Icons.grid_3x3,color: Colors.black,)),
            Tab(icon: Icon(Icons.favorite,color: Colors.black,)),
            Tab(icon: Icon(Icons.lock,color: Colors.black,)),

          ]),

          Expanded(child: TabBarView(children: [
            FirstTab(),
            SecondTab(),
            ThirdTab(),



          ],))
        ],)
      ),
    );
  }
}
