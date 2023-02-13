
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/ui_plant/producttile.dart';
import 'package:untitled/ui_plant/producttile2.dart';
import 'package:untitled/ui_plant/titlerow.dart';
import 'bottomnavbar.dart';
import 'detailscreen.dart';

class HomeScree_Plant extends StatelessWidget {
  HomeScree_Plant({Key? key}) : super(key: key);

  List<String> imagelist = [
    'lib/assets/plant/images/image_1.png',
    'lib/assets/plant/images/image_2.png',
    'lib/assets/plant/images/image_3.png',
  ];

  List<String> imagelist2=[
    'lib/assets/plant/images/bottom_img_1.png',
    'lib/assets/plant/images/bottom_img_2.png'
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildappbar(context),
      body: body(size),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
  buildappbar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.pink,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailScreen()));
        },
        icon: SvgPicture.asset('lib/assets/plant/icons/menu.svg'),
      ),
      actions: [IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: Icon(Icons.logout))],
    );
  }

  Widget headerWithSearchbar(Size size) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: size.height * 0.20,
      //color: Colors.yellow,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            //to move center decrease height below
            height: size.height * 0.20,
            decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                )),

            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Hello Guys',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Image.asset('lib/assets/plant/images/logo.png'),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 5,
            right: 0,
            left: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 60,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  offset: Offset(1, 1),
                  color: Colors.black,
                  blurRadius: 10,
                ),
              ], borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    'lib/assets/plant/icons/search.svg',
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  body(Size size) {
    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                headerWithSearchbar(size),
                TitleRow(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        3,
                            (index) => ProductTile(
                          size: size,
                          imageurl: imagelist[index],
                        )),
                  ),
                ),
                TitleRow(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(2, (index) => ProductCard2(imageurl: imagelist2[index],)),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
