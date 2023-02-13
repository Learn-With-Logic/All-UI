import 'package:flutter/material.dart';

import 'bottombaritem.dart';


class MyBottomNavigationBar extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 80,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomBarItem(
                ontap: (){}, title: 'Calendar', svgpicture: 'lib/assets/gym/icons/calendar.svg'),
            BottomBarItem(
                isactive: true,
                ontap: (){}, title: 'Exercises', svgpicture: 'lib/assets/gym/icons/gym.svg'),
            BottomBarItem(ontap: (){}, title: 'Settings', svgpicture: 'lib/assets/gym/icons/Settings.svg')
          ],),
      ),

    );
  }
}
