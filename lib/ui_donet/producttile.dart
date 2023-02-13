import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final String name;
  final double price;
  final bool isfav;
  final String imageurl;
  final MaterialColor color;

  const ProductTile(
      {Key? key,
      required this.name,
       required this.isfav,
      required this.color,
      required this.imageurl,
      required this.price})
      : super(key: key);

  final double borderradius = 20;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6),
      child: Material(
        color: color[50],
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white,width: 2),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromRGBO(104, 104, 104, 0.2),
                  offset: Offset(3, 4),
                  spreadRadius: 1,
                  blurRadius: 3)
            ],
            //   color: color[50],
            borderRadius: BorderRadius.circular(borderradius),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //price
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(borderradius),
                            topRight: Radius.circular(borderradius))),
                    child: Text(
                      '\$' + price.toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ],
              ),
              Padding(
                //todo cant understand
                padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 12),
                child: Image.asset(imageurl),
              ),
              Text(
                name.toString(),
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: color, fontSize: 20),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'Logic',
                style: TextStyle(color: Colors.grey),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                        },
                        icon: isfav == true
                            ? Icon(Icons.favorite)
                            : Icon(Icons.favorite_outline)),
                    TextButton(
                        //color: Colors.grey,
                        onPressed: () {}, child: Text('Buy',style: TextStyle(fontSize: 18),))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
