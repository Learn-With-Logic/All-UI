import 'package:flutter/material.dart';
import 'models/food.dart';
import 'models/restaurant.dart';
import 'myconstants.dart';

class RestaurantScreen extends StatefulWidget {
  final Restaurant restaurant;

  RestaurantScreen({required this.restaurant});

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  ratingstarts(int x) {
    String str = '';
    for (int temp = 1; temp <= x; temp++)
      str = str + ' ⭐️';
    str.trim();

    return Text(
      str,
      style: kTextStyle1,
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Hero(
                tag: widget.restaurant.imageUrl,
                child: Image(
                  height: 220.0,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  image: AssetImage(widget.restaurant.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                      iconSize: 30.0,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                      ),
                      color: Colors.orange,
                      iconSize: 30.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.restaurant.name,
                      style: kTextStyle2,
                    ),
                    Text(
                      '0.2 miles away',
                      style: kTextStyle2,
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.0,
                ),
                ratingstarts(widget.restaurant.rating),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  widget.restaurant.address,
                  style: kTextStyle2,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(

                onPressed: () {},
                child: Text(
                  'Reviews ',
                  style: kTextStyle1,
                ),
              ),
              TextButton(

                onPressed: () {},
                child: Text(
                  'Contacts',
                  style: kTextStyle1,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Menu',
            style: kTextStyle2,
          ),
          SizedBox(
            height: 20.0,
          ),


          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(10.0),
              crossAxisCount: 2,
              children: List.generate(widget.restaurant.menu.length, (index) {
                Food food = widget.restaurant.menu[index];
                return _buildmenuitem(food);
              }),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildmenuitem(Food menuitem) {
    return Center(child:
    Stack(
      alignment: Alignment.center,
      children: [
      Container(
      height: 175.0,
      width: 175.0,
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        image:
        DecorationImage(
          image: AssetImage(menuitem.imageUrl,),
          fit: BoxFit.cover,),
        borderRadius: BorderRadius.circular(20.0),
      ),


    ),
      Container(
        height: 175.0,
        width: 175.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.3),
              Colors.blue.withOpacity(0.3),
              Colors.green.withOpacity(0.3),
              Colors.red.withOpacity(0.3),
            ],
            stops: [0.2,0.7,0.8,0.9],



          ),
        ),


      ),
        Positioned(
          bottom: 65.0,
          child: Container(
            color: Colors.black.withOpacity(0.4),
            child: Column(
              children: [
                Text(menuitem.name,style: kTextStyle7,),
                Text('\$ ${menuitem.price}',style: kTextStyle6,),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 5.0,
          right: 5.0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: IconButton(icon: Icon(Icons.add),onPressed: (){

            },iconSize: 20.0,color: Colors.white,),
          ),

        )

    ]
    ,
    )
    ,
    );


  }
}
