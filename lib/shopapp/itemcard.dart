import 'package:flutter/material.dart';

import 'Product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback ontap;

  ItemCard({required this.product,required this.ontap});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(product.image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(product.title,style: TextStyle(fontSize: 14,color: Colors.grey),),
          ),
          Text('\$${product.price}'),


        ],),
    );
  }
}
