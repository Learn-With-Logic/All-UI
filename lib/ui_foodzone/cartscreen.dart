import 'dart:ffi';

import 'data/data.dart';
import 'models/order.dart';
import 'package:flutter/material.dart';
import 'myconstants.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override



  Widget build(BuildContext context) {
    double totalcost=0;

    currentUser.cart!.forEach((Order order) =>totalcost+=order.quantity*order.food.price);




    return Scaffold(
      appBar: AppBar(title: Text('Cart (${currentUser.cart?.length})'),),
      body:ListView.separated(
        physics: BouncingScrollPhysics(),


        itemCount: currentUser.cart!.length+1,
          itemBuilder: (BuildContext context, int index){

            if(index<currentUser.cart!.length){
              Order order=currentUser.cart![index];

              return _buildcartitem(order);
            }
            else{
              return Column(children: [
                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Estimate Delivery Time :',style: kTextStyle1,),
                    //TODO here problem shown on long text
                    Text('25 min',style: kTextStyle1,overflow:TextOverflow.ellipsis,),
                  ],
                ),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total Cost :',style: kTextStyle1,),
                    //TODO here problem shown on long text
                    Text('\$${totalcost.toStringAsFixed(2)}',style: kTextStyle1,overflow:TextOverflow.ellipsis,),

                  ],

                ),
                SizedBox(height: 100.0,),
              ],);
            }


        },
          separatorBuilder: (BuildContext context, int index){
            return Divider(
            height: 1.0,
            color: Colors.grey,);
          },
      ),

      bottomSheet: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.red,
            boxShadow: [BoxShadow(color: Colors.black,offset: Offset(0,-1),
          blurRadius: 6.0)]
        ),



        child: Center(child: TextButton(
          onPressed: (){},
          child: Text('CHECKOUT',style: kTextStyle8,),),)


      ),);
  }

  Widget _buildcartitem(Order order) {

    return Container(
      padding: EdgeInsets.all(20.0),
      height: 170.0,
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  width: 150.0,
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                  image:DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(order.food.imageUrl),
                  ),),
                ),
                
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(order.food.name,style: kTextStyle2,overflow: TextOverflow.ellipsis,),
                        Text(order.restaurant.name,style: kTextStyle3,overflow: TextOverflow.ellipsis),
                        QtyWidget(order.quantity),
                      ],
                    ),
                  ),
                )

              ],
            ),
          ),

          Container(
            margin: EdgeInsets.all(10.0),
              child: Text('\$ ${((order.food.price)*(order.quantity)).toString()}',style: kTextStyle3,)),

        ],
      ),

    );


  }

  QtyWidget(int quantity) {

    return Container(
      width: 100.0,
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(width: 1.0,color: Colors.orange),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
        GestureDetector(
          onTap: (){},
            child: Text('-',style: kTextStyle3,)),SizedBox(width: 10.0,),
        Text(quantity.toString(),style: kTextStyle3,), SizedBox(width: 10.0,),
        GestureDetector(onTap: (){

        },
            child: Text('+',style: kTextStyle3,)),
      ],
      ),

    );
  }
}
