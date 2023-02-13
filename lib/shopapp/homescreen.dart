import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Product.dart';
import 'categories.dart';
import 'detailscreen.dart';
import 'itemcard.dart';


class HomeScreen_Shopapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text('Women',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue),),
          ),
          SizedBox(height: 4,),
          CatogoryList(),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.70
                ) ,
                itemBuilder: (context,index){

                  return ItemCard(product: products[index],ontap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return DetailScreen(product:products[index]);
                    }));
                  },);
    }),
          ))



        ],
      ),
    );
  }
  AppBar buildAppbar(BuildContext context)
  {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(icon: SvgPicture.asset('lib/assets/shopapp/icons/back.svg',color: Colors.blue,),onPressed: (){
        Navigator.pop(context);

      },),
      actions: [
        IconButton(onPressed: (){

        }, icon: SvgPicture.asset('lib/assets/shopapp/icons/search.svg',color: Colors.blueAccent,)),
        SizedBox(width: 5,),
        IconButton(onPressed: (){}, icon: SvgPicture.asset('lib/assets/shopapp/icons/cart.svg',color: Colors.blueAccent,)),
        SizedBox(width: 20,),
      ],

    );
  }
}
