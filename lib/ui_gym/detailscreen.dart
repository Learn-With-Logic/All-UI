
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/ui_gym/sessioncard.dart';

import 'mybottomnavigationbar.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                image: DecorationImage(
                  image: AssetImage(
                    'lib/assets/gym/images/meditation_bg.png',
                  ),
                  fit: BoxFit.fitWidth,
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Meditaion',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '3 to 10 Minute Course',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      width: size.width * 0.70,
                      child: Text(
                        'Live Happier and Healthier by Learning the fundamentals of Meditation and mindfulness',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(width: size.width * 0.60, child: searchTextfield()),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 2.0,color: Colors.white),
                    ),
                    child: Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        SessionCard(number: 1,ontap: (){},),
                        SessionCard(number: 2,ontap: (){}),
                        SessionCard(number: 3,ontap: (){}),
                        SessionCard(number: 4,isdone: true,ontap: (){}),
                        SessionCard(number: 5,ontap: (){}),
                        SessionCard(number: 6,ontap: (){}),
                       ],
                    ),
                  ),

                  SizedBox(height: 10,),



                  Text("Meditation",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),

                  SizedBox(height: 10,),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    height: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0,18),
                          blurRadius: 12,
                          spreadRadius: -18,
                          color: Colors.blue,
                        )
                      ],

                    ),

                    child: Row(
                      children: [
                        SvgPicture.asset('lib/assets/gym/icons/Meditation_women_small.svg',
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                            Text('Basic 2'),
                            Text('Start Your deepen Practise'),
                            ],),
                        ),
                        SvgPicture.asset('lib/assets/gym/icons/Lock.svg'),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget searchTextfield() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(29),
      ),
      child: TextField(
        decoration: InputDecoration(
            icon: SvgPicture.asset('lib/assets/gym/icons/search.svg'),
            hintText: 'Search',
            border: InputBorder.none),
      ),
    );
  }
}
