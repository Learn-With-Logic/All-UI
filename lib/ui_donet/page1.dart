import 'package:flutter/material.dart';

import 'producttile.dart';

class Page1 extends StatelessWidget {
  Page1({Key? key}) : super(key: key);

  List products = [
    ["Venila", 100.00, true, "lib/assets/donet/images/donut.png", Colors.blue],
    ["StrawBerry", 150.00, false, "lib/assets/donet/images/donut-2.png", Colors.pink],
    ["BlackCurrent", 140.00, true, "lib/assets/donet/images/donut-3.png", Colors.green],
    ["Litchi", 200.00, true, "lib/assets/donet/images/donut-4.png", Colors.orange],
    ["Kiwi", 400.00, false, "lib/assets/donet/images/donut-5.png", Colors.red],
    ["American nut", 250.00, false, "lib/assets/donet/images/donut-6.png", Colors.purple],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.builder(
            itemCount: products.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                  childAspectRatio: 1/1.5,

                ),
            itemBuilder: (context, index) {
              return ProductTile(
                isfav: products[index][2],
                price: products[index][1],
                name: products[index][0],
                imageurl: products[index][3],
                color: products[index][4],
              );
            }));
  }
}
