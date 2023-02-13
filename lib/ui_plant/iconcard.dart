import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class IconCard extends StatelessWidget {

  final String iconpath;
  const IconCard({Key? key,required this.iconpath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(offset: Offset(1,1),blurRadius: 10,),

            ],
          ),
          height: 50,
          width: 50,
          //color: Colors.red,
          child: IconButton(onPressed: (){},icon: SvgPicture.asset(iconpath.toString()),),
        ),
      ),
    );
  }
}
