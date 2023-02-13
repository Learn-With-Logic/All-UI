import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final Size size;
  final String imageurl;
  const ProductTile({Key? key,required this.size,required this.imageurl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
        child: Container(
          width: size.width*0.40,
          color: Colors.grey,
          child: Column(children: [
            Image.asset(imageurl),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(offset: Offset(0,10),
                        blurRadius: 10,
                        color: Colors.grey
                        
                    )
                  ]
              ),
              child: Row(children: [
                Text('product'),
                Spacer(),
                Text('300.00Rs'),
              ],),

            )

          ],),





        ),
      ),
    );
  }
}
