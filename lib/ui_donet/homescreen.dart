
import 'package:flutter/material.dart';
import 'package:untitled/ui_donet/page1.dart';

import 'mytab.dart';

class HomeScreen_donet extends StatefulWidget {
  const HomeScreen_donet({Key? key}) : super(key: key);

  @override
  State<HomeScreen_donet> createState() => _HomeScreen_donetState();
}

class _HomeScreen_donetState extends State<HomeScreen_donet> {
  List<Widget> tablist =const [
    MyTab(iconpath: 'lib/assets/donet/icons/donut.png'),
    MyTab(iconpath: 'lib/assets/donet/icons/donut-2.png'),
    MyTab(iconpath: 'lib/assets/donet/icons/donut-3.png'),
    MyTab(iconpath: 'lib/assets/donet/icons/doughnut.png'),
    MyTab(iconpath: 'lib/assets/donet/icons/doughnut-2.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: tablist.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text('Logic Computer'),
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 30,
              ),
              onPressed: () {},
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.logout,
                    color: Colors.grey[800],
                    size: 30,
                  )),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 18),
              child: Row(
                children: const [
                  Text(
                    'I want to',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    ' EAT',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //todo how to remove tabbar's auto padding
            TabBar(
                tabs: tablist),
            SizedBox(height: 10,),
            Expanded(
              child: TabBarView(children:
               List.generate(5, (index) => Page1()).toList()

              ),
            ),

          ],
        ),
      ),
    ));
  }
}
