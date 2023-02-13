import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'iconcard.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  //color: Colors.blue,
                  child: SizedBox(
                    height: size.height * 0.70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
//
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: SvgPicture.asset(
                                      'lib/assets/plant/icons/back_arrow.svg')),
                            ),
                          ),
                          //color: Colors.green,
                        ),
                        Spacer(),
                        Container(
                          //color: Colors.purple,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconCard(iconpath: 'lib/assets/plant/icons/sun.svg'),
                              IconCard(iconpath: 'lib/assets/plant/icons/icon_2.svg'),
                              IconCard(iconpath: 'lib/assets/plant/icons/icon_3.svg'),
                              IconCard(iconpath: 'lib/assets/plant/icons/icon_4.svg'),
                            ],
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: size.width * 0.70,
                height: size.height * 0.70,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(1, 10),
                          blurRadius: 50,
                          color: Colors.grey)
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        bottomLeft: Radius.circular(40)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        alignment: Alignment.centerLeft,
                        image: AssetImage(
                          'lib/assets/plant/images/img.png',
                        ))),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Angelica\n',
                      style: TextStyle(fontSize: 30, color: Colors.green)),

                      TextSpan(text: 'Russia',style: TextStyle(fontSize: 20,color: Colors.green))
                ]),),
                Spacer(),

                Text('\$400.00',style: TextStyle(fontSize: 20,color: Colors.black),)

              ],
            ),
          ),
          Spacer(),
          Container(
            child: Row(
              children: [
                Expanded(child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    )
                  ),
                  child: Center(child: Text('Buy Now',style: TextStyle(fontSize: 20,color: Colors.white),)),
                )),
                Expanded(child: Container(
                  color: Colors.transparent,
                  child: Center(child: Text('Description',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
                )),
              ],
            ),
            height: 60,
          ),




        ],
      ),
    ));
  }
}
