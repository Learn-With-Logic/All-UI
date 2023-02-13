import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'coffetile.dart';
import 'imagetile.dart';

class HomeScreen_Coffee extends StatefulWidget {
  const HomeScreen_Coffee({Key? key}) : super(key: key);

  @override
  State<HomeScreen_Coffee> createState() => _HomeScreen_CoffeeState();
}

class _HomeScreen_CoffeeState extends State<HomeScreen_Coffee> {
  List<String> titles=['All','Fav','Popular','Trending'
  ];

  int selectedindex=0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.menu,
            size: 30,
          ),
          actions:  [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.logout,
                  size: 30,
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Fav'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Setting'),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 30.0, left: 10),
              child: Text(
                'Find the best COFFEE for you',
                style: GoogleFonts.bebasNeue(fontSize: 40,color: Colors.yellow[100]),
              ),
            ),
            const SizedBox(height: 20,),
            const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.0),
              child:  TextField(decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search,),
                hintText: 'Search Favourite Coffee...',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)
                ),
              ),),
            ),
            SizedBox(height: 20,),

            Container(
              height: 40,
            //  color: Colors.blue,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: titles.length,
                  itemBuilder: (context,index){
                    return CoffeeTile(name: titles[index], ontap: (){
                      selectedindex=index;
                      setState(() {

                      });
                    },isselected: selectedindex==index,);
                  }),
            ),
            SizedBox(height: 30,),


            Expanded(child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ImageTile(),
                ImageTile(),
                ImageTile(),
                ImageTile(),

              ],
            )),

          ],
        ));
  }
}
