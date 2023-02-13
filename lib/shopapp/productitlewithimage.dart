import 'package:flutter/material.dart';

import 'Product.dart';

class ProductTitleWithImage extends StatelessWidget {
  final Product product;
  ProductTitleWithImage({required this.product});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'AristoCratic Hand Bag',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Text(
            product.title,
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: 'Price\n',style: TextStyle(fontSize: 20,color: Colors.white)),
                    TextSpan(
                      text: '\$${product.price}',
                      style: TextStyle(
                          fontSize: 32, color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 30,),
              Expanded(child: Image.asset(product.image,fit: BoxFit.fill,),),
            ],
          )
        ],
      ),
    );
  }
}
