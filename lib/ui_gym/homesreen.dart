import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'categorycard.dart';
import 'detailscreen.dart';
import 'mybottomnavigationbar.dart';

class HomeScreen_Gym extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: MyBottomNavigationBar(),

        body: Stack(
          children: [
            Container(
              height: size.height * 0.45,
              decoration: BoxDecoration(
                  color: Color(0xFFF5ceB8),
                  image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      image:
                          AssetImage('lib/assets/gym/images/undraw_pilates_gpdb.png'))),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(icon: Icon(Icons.logout),onPressed: (){
                        Navigator.of(context).pop();
                      },),
                    ),
                  ),
                  Text(
                    'Good Morning \nIrfanSir',
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  searchTextfield(),
                  Expanded(
                    child: showGridview(context),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }


  Widget showGridview(BuildContext context)
  {
    return GridView.count(
      childAspectRatio: 1.0,
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: [
        CateogryCard(
          title: 'Diet \nRecommendations',
          imageurl: 'lib/assets/gym/icons/Hamburger.svg',
          ontap: (){},),

        CateogryCard(
            title: 'Kegel Exercise',
            imageurl: 'lib/assets/gym/icons/Excrecises.svg',ontap: (){}),
        CateogryCard(
            ontap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return DetailScreen();
              }));


            },
            title: 'Meditation',
            imageurl: 'lib/assets/gym/icons/Meditation.svg'),
        CateogryCard(
            ontap: (){
              print('i am clicked');
            },
            title: 'Yoga', imageurl: 'lib/assets/gym/icons/yoga.svg'),

      ],
    );
  }


  Widget searchTextfield()
  {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding:
      EdgeInsets.symmetric(horizontal: 30, vertical: 6),
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
