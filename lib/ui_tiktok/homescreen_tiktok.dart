import 'package:flutter/material.dart';
import 'package:untitled/ui_tiktok/pages/page1.dart';
import 'package:untitled/ui_tiktok/pages/page2.dart';
import 'package:untitled/ui_tiktok/pages/page3.dart';
import 'package:untitled/ui_tiktok/pages/page4.dart';
import 'package:untitled/ui_tiktok/pages/page5.dart';


class HomeScreen_Tiktok extends StatefulWidget {
  const HomeScreen_Tiktok({Key? key}) : super(key: key);

  @override
  State<HomeScreen_Tiktok> createState() => _HomeScreen_TiktokState();
}

class _HomeScreen_TiktokState extends State<HomeScreen_Tiktok> {
  int selectedindex=0;

  List<Widget> pages = [
    Page1(),
    Page2(),
    Page3(),
    Page4(),
    Page5(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:pages[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedindex,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'Video'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
        ],
        onTap: ontapselection,
      ),


    );
  }

  void ontapselection(int value) {
    setState(() {
      selectedindex = value;
    });
  }
}
