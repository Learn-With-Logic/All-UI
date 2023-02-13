import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {

  final String name;
  final bool isselected;
  final VoidCallback ontap;

  const CoffeeTile({Key? key,required this.name,this.isselected=false,required this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white12,
            borderRadius: BorderRadius.circular(20),

          ),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Text(name.toString(),style: TextStyle(
              fontSize: 18,color: isselected?Colors.orange:Colors.grey,fontWeight: FontWeight.bold
            ),),
          ),
        ),
      ),
    );
  }
}
