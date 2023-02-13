import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomBarItem extends StatelessWidget {
  final String svgpicture;
  final String title;
  final VoidCallback ontap;
  bool isactive=false;

  BottomBarItem({required this.ontap,required this.title,required this.svgpicture,this.isactive=false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(svgpicture,color: isactive?Colors.red:Colors.black,),
          Text(title,style: TextStyle(color: isactive?Colors.red:Colors.black),),
        ],
      ),
    );
  }
}
