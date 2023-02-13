import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CateogryCard extends StatelessWidget {

  final String imageurl;
  final String title;
  final VoidCallback ontap;

  CateogryCard({required this.title,required this.imageurl,required this.ontap});


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(offset: Offset(0,15),
            blurRadius: 20,
            spreadRadius: -24,
            color: Colors.blue),
          ],
        ),

        child: Material(

          child: InkWell(
            onTap:ontap,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Spacer(),
                  SvgPicture.asset(imageurl,),
                  Text(title, textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 14),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );

  }
}
