
import 'package:flutter/material.dart';

import 'exercisetilewidget.dart';
import 'moodwidget.dart';

class HomeScreen_Dribble extends StatefulWidget {
  const HomeScreen_Dribble({Key? key}) : super(key: key);

  @override
  State<HomeScreen_Dribble> createState() => _HomeScreen_DribbleState();
}

class _HomeScreen_DribbleState extends State<HomeScreen_Dribble> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Fav'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            //greetings
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 10),
              child: Column(
                children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi.Irfan !',
                          style: TextStyle(fontSize: 24, color: Colors.blue[100]),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          '04-oct-2022',
                          style: TextStyle(color: Colors.blue[100]),
                        )
                      ],
                    ),
                    Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Colors.blue[500],
                            borderRadius: BorderRadius.circular(12)),
                        child: IconButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.logout,color: Colors.blue[100],)))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                //searbaar
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        size: 20,
                        color: Colors.blue[100],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(fontSize: 20,color: Colors.white38),
                            border: InputBorder.none
                        ),
                      )),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                //how do u feel
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('How Do You Feel, Irfan?',style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold,color: Colors.blue[100]),),
                    IconButton(
                        onPressed: (){},
                        icon:Icon(Icons.more_vert,size: 24,color: Colors.blue[100],)),
                  ],),
                SizedBox(height: 20,),
                //mood icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MoodWidget(icon: '😔', label: 'Badly'),
                    MoodWidget(icon: '😄', label: 'Fine'),
                    MoodWidget(icon: '☺️', label: 'Well'),
                    MoodWidget(icon: '😂', label: 'Excellent'),
                  ],
                ),
              ],),
            ),
            SizedBox(height: 20,),
            //exercise part(2nd part)
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(children: [
                    //exercise heading
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text('Exercises..',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                      Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(Icons.more_vert,size: 20,))
                    ],),
                    SizedBox(height: 20,),
                    Expanded(
                      child: ListView(
                        children: [
                          ExerciseTileWidget(color:Colors.lime,icondata: Icons.favorite, title: 'Speaking Skills', number: 16),
                          ExerciseTileWidget(color:Colors.green,icondata: Icons.person, title: 'Reading Speed', number: 8),
                          ExerciseTileWidget(color:Colors.blue,icondata: Icons.no_food, title: 'Eating time', number: 9),
                          ExerciseTileWidget(color:Colors.purple,icondata: Icons.traffic, title: 'Travels', number: 10),


                        ],
                      ),
                    )//listview of different exercises



                  ],),
                ),
              ),

            )

          ],
        ),
      ),
    );
  }
}
