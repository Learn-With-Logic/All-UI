
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/shopapp/productitlewithimage.dart';

import 'Product.dart';
import 'colordot.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  DetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(size.toString());
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppbar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.40),
                    // padding: EdgeInsets.only(
                    //   top: size.height*0.12,
                    //   left: 10,
                    //   right: 10,
                    // ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    height: 500,

                    child: Padding(
                      padding: const EdgeInsets.only(top: 50,left: 50),
                      child: Row(
                        children: [
                          Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text('Colors'),
                            Row(children: [
                              ColorDot(color: Colors.red),
                              ColorDot(color: Colors.orangeAccent),
                              ColorDot(color: Colors.green),
                              ColorDot(color: Colors.blue),

                            ],)


                          ],)
                        ],
                      ),
                    ),
                  ),
                 ProductTitleWithImage(product: product),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
              color: Colors.white,
            )),
        SizedBox(
          width: 5,
        ),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/cart.svg',
              color: Colors.white,
            )),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
