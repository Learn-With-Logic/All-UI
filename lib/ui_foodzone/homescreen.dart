import 'package:flutter/material.dart';
import 'package:untitled/ui_foodzone/recentorders.dart';
import 'package:untitled/ui_foodzone/restaurantscreen.dart';
import 'data/data.dart';
import 'cartscreen.dart';
import 'models/restaurant.dart';
import 'myconstants.dart';

class HomeScreen_FoodZone extends StatefulWidget {
  @override
  State<HomeScreen_FoodZone> createState() => _HomeScreen_FoodZoneState();
}

class _HomeScreen_FoodZoneState extends State<HomeScreen_FoodZone> {

  ratingstarts(int x)
  {
    String str='';
    for(int temp=1;temp<=x;temp++)
      str=str+' ⭐️';
    str.trim();

    return Text(str,style: kTextStyle1,);
  }


    _buildrestaurants()
    {
      List <Widget> restaurantlist =[];

       restaurants.forEach((Restaurant r)
      {
        restaurantlist.add(
          GestureDetector(
            onTap: ()=>Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_)=>RestaurantScreen(restaurant: r),
            ),),



            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
              decoration: BoxDecoration(
                //color: Colors.blue,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(width: 1.0,color: Colors.orange,),
              ),

              child: Row(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Hero(
                    tag: r.imageUrl,
                    child: Image(
                      height: 150.0,
                      width: 150.0,
                      fit: BoxFit.cover,
                      image: AssetImage(r.imageUrl),),
                  ),
                ),

                 Expanded(
                   child: Container(
                      margin: EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center ,
                        children: [
                        Text(r.name,style: kTextStyle2,overflow: TextOverflow.ellipsis,),
                        SizedBox(height: 10.0,),
                        ratingstarts(r.rating,),
                          SizedBox(height: 10.0,),

                          Text(r.address,style: kTextStyle1,overflow: TextOverflow.ellipsis),
                          SizedBox(height: 10.0,),

                        Text('0.2 miles away',style: kTextStyle5,overflow: TextOverflow.ellipsis),


                      ],),
                    ),
                 ),



              ],
              ),
            ),
          ),
        );

      });



      return Column(children: restaurantlist,);
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Zone'),
        leading: IconButton(
          icon: Icon(Icons.account_circle),
          iconSize: 30.0,
          onPressed: () {},
        ),
        actions: [
          TextButton(
            onPressed: () =>Navigator.push(context, MaterialPageRoute(
              builder: (_)=>CartScreen(),
            ),),
            child: Text(
              'Cart (${currentUser.cart?.length})',
              style: kTextStyle6,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          //search Food
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.blue.shade100,
                contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                hintText: 'Search Your Food',
                prefixIcon: Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.clear,
                  ),
                  onPressed: () {},
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(
                    width: 0.6,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                enabledBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(
                width: 0.6,
                color: Theme.of(context).primaryColor,
              ),
            ),
              ),
            ),
          ),

          //Recent Orders

          RecentOrders(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text('Near By Restauratn',style: kTextStyle3,),
            ),
              _buildrestaurants(),

          ],)




        ], //
      ),
    );
  }
}
