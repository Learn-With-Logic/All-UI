import 'package:flutter/material.dart';
import 'models/order.dart';
import 'myconstants.dart';
import 'data/data.dart';

class RecentOrders extends StatelessWidget {

  _buildRecentOrder(BuildContext context, Order o)
  {
    return Container(
      margin: EdgeInsets.all(15.0),
      width: 320.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(width: 0.2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image(
              image: AssetImage(o.food.imageUrl),
              width: 100.0,
              height: 100.0,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10.0,),
          Expanded(
            //expanded to solve the problem...about pixel
            child: Container(
              //color: Colors.pink,
//            margin: EdgeInsets.all(12.0),

//TODO
// Dont apply margin for some issues check later
// padding: EdgeInsets.only(left: 20.0),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(o.food.name+'',style: kTextStyle3,overflow: TextOverflow.ellipsis,),
                  SizedBox(height: 10.0,),
                  Text(o.restaurant.name,style: kTextStyle4,overflow:TextOverflow.ellipsis,),
                  SizedBox(height: 10.0,),
                  Text(o.date,style: kTextStyle4,overflow:TextOverflow.ellipsis,),



                ],
              ),
            ),
          ),
          Container(

            margin: EdgeInsets.only(right: 20.0),
            width: 48.0,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: IconButton(icon: Icon(Icons.add),onPressed: (){

            },iconSize: 30.0,),
          ),
          


        ],
      ),

    );


  }


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text('Recent Orders',style:kTextStyle2,),
        ),
        //for horizontal scroll view as a child of column2

        Container(
          height: 140.0,
          //color: Colors.grey.shade400,
          child: ListView.builder(
            //to bouse while scrolling
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.only(left: 12.0),


            scrollDirection: Axis.horizontal,
            itemCount: currentUser.orders?.length,
            itemBuilder: (BuildContext context,int index){
              Order o=currentUser.orders![index];
              //return Text(o.food.name,);
              return _buildRecentOrder(context,o);

            },
          ),

        ),


      ],
    );
  }
}
