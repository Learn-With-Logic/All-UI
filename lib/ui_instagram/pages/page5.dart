import 'package:flutter/material.dart';
import 'package:untitled/ui_instagram/bubblestories.dart';
import 'package:untitled/ui_instagram/tabbarview/tabbar1.dart';

import '../tabbarview/tabbar2.dart';
import '../tabbarview/tabbar3.dart';
import '../tabbarview/tabbar4.dart';

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Column(
                    children: [Text('200'), Text('Post')],
                  ),
                  Column(
                    children: [Text('400'), Text('Followers')],
                  ),
                  Column(
                    children: [Text('600'), Text('Following')],
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Irfan Ganatra'),
                    RichText(
                      text: TextSpan(
                          style: TextStyle(fontSize: 12, color: Colors.black),
                          children: [
                            TextSpan(text: 'I am learning '),
                            TextSpan(
                                text: 'Flutter',
                                style: TextStyle(color: Colors.blue)),
                          ]),
                    ),
                    Text('logiccomputerclass@gmail.com'),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Center(child: Text('Edit Profile')),
                    decoration: BoxDecoration(color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),

                  ),
                      )),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Center(child: Text('Add Tools')),
                          decoration: BoxDecoration(color: Colors.grey,
                              borderRadius: BorderRadius.circular(10)),

                        ),
                      )),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Center(child: Text('inSights')),
                          decoration: BoxDecoration(color: Colors.grey,
                              borderRadius: BorderRadius.circular(10)),

                        ),
                      ),)
                ],
              ),

              Row(children:[
                BubbleStories(person: 'Irfan'),
                BubbleStories(person: 'Irfan'),
                BubbleStories(person: 'Irfan'),
                BubbleStories(person: 'Irfan'),


              ]),
              SizedBox(height: 10,),

              TabBar(tabs: [
                Tab(icon: Icon(Icons.grid_3x3_outlined,color: Colors.black,),),
                Tab(icon: Icon(Icons.video_call,color: Colors.black,),),
                Tab(icon:Icon(Icons.shop,color: Colors.black,)),
                Tab(icon: Icon(Icons.favorite,color: Colors.black,),),

              ]),
              Expanded(
                child: TabBarView(children: [
                  Tabbar1(),
                  Tabbar2(),
                  Tabbar3(),
                  Tabbar4(),
                ]),
              )
            ],
          ),
        ),
      )),
    );
  }
}
