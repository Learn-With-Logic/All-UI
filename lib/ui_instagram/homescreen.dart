import 'package:flutter/material.dart';
import 'package:untitled/ui_instagram/pages/page1.dart';
import 'package:untitled/ui_instagram/pages/page2.dart';
import 'package:untitled/ui_instagram/pages/page3.dart';
import 'package:untitled/ui_instagram/pages/page4.dart';
import 'pages/page5.dart';

class HomeScreen_Instagram extends StatefulWidget {
  const HomeScreen_Instagram({Key? key}) : super(key: key);

  @override
  State<HomeScreen_Instagram> createState() => _HomeScreen_InstagramState();
}

class _HomeScreen_InstagramState extends State<HomeScreen_Instagram> {
  List<Widget> pages = [
    Page1(),
    Page2(),
    Page3(),
    Page4(),
    Page5(),
  ];

  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedindex],
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
