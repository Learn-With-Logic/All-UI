import 'package:flutter/material.dart';

class TitleRow extends StatelessWidget {
  const TitleRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 24,
          //color: Colors.red,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 6,
                  color: Colors.green[100],
                ),
              ),
              Text('Recommanded',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold),),

            ],
          ),
        ),
        TextButton(onPressed: (){}, child: Text('More')),
      ],);
  }
}
