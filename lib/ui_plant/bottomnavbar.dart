import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: EdgeInsets.symmetric(horizontal: 20),
    height: 60,
    decoration: BoxDecoration(
    color: Colors.grey
    ),

    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    IconButton(onPressed: (){},icon: SvgPicture.asset('lib/assets/plant/icons/flower.svg'),),
    IconButton(onPressed: (){},icon: SvgPicture.asset('lib/assets/plant/icons/heart-icon.svg'),),
IconButton(onPressed: (){},icon: SvgPicture.asset('lib/assets/plant/icons/user-icon.svg'),),

],),
);
  }
}
