import 'package:flutter/material.dart';
import 'package:untitled/shopapp/homescreen.dart';
import 'package:untitled/ui_budgetapp/homescreen.dart';
import 'package:untitled/ui_coffee/homescreen.dart';
import 'package:untitled/ui_donet/homescreen.dart';
import 'package:untitled/ui_dribble/homescreen.dart';
import 'package:untitled/ui_foodzone/homescreen.dart';
import 'package:untitled/ui_gym/homesreen.dart';
import 'package:untitled/ui_loginregister/homescreen.dart';
import 'package:untitled/ui_musicplayer/homescreen.dart';
import 'package:untitled/ui_plant/homepage.dart';

import 'ui_instagram/homescreen.dart';
import 'ui_tiktok/homescreen_tiktok.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final screens = [
    {
      'name': 'Coffee UI',
      'screen': HomeScreen_Coffee(),
    },
    {
      'name': 'Donet UI',
      'screen': HomeScreen_donet(),
    },
    {
      'name': 'Gym UI',
      'screen': HomeScreen_Gym(),
    },
    {
      'name': 'Plant UI',
      'screen': HomeScree_Plant(),
    },
    {
      'name': 'Shopapp UI',
      'screen': HomeScreen_Shopapp(),
    },
    {
      'name': 'Dribble UI',
      'screen': HomeScreen_Dribble(),
    },
    {
      'name': 'Music Player UI',
      'screen': HomeScreen_Musicplayer(),
    },
    {
      'name': 'Login UI',
      'screen': HomeScreen_Loginregister(),
    },
    {
      'name': 'Instagram UI',
      'screen': HomeScreen_Instagram(),
    },
    {
      'name': 'FoodZone UI',
      'screen': HomeScreen_FoodZone(),
    },
    {
      'name': 'TikTok UI',
      'screen': HomeScreen_Tiktok(),
    },
    {
      'name': 'BudgetApp UI',
      'screen': HomeScreen_BudgetApp(),
    }
  ];
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 26),
                        children: [
                          TextSpan(
                            text: 'Select ',
                          ),
                          TextSpan(
                              text: 'UI', style: TextStyle(color: Colors.white))
                        ]),
                  ),
                ),
              ),
            ),
            Expanded(
                child: GridView.builder(
                    itemCount: screens.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 1 / 0.8, crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Card(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return screens[index]['screen'] as Widget;
                            }));
                          },
                          child: Container(
                            color: Colors.green.shade400,
                            child: Center(
                                child: Text(
                              screens[index]['name'].toString(),
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                shadows: <Shadow>[
                                  Shadow(
                                      offset: Offset(5.0, 5.0),
                                      blurRadius: 3.0,
                                      color: Colors.grey.shade400),
                                  Shadow(
                                      offset: Offset(5.0, 5.0),
                                      blurRadius: 8.0,
                                      color: Colors.grey),
                                ],
                              ),
                            )),
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
