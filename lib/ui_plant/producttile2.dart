import 'package:flutter/material.dart';

class ProductCard2 extends StatelessWidget {

  final String imageurl;
  const ProductCard2({Key? key,required this.imageurl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width*0.70,
        height: 150,
        decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(40),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(imageurl),)
        ),

      ),
    );
  }
}
