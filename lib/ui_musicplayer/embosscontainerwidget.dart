import 'package:flutter/material.dart';

class EmbossContainerWidget extends StatelessWidget {

  final child;
  final VoidCallback ontap;

  const EmbossContainerWidget({Key? key,required this.child,required this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              const BoxShadow(
                  color: Colors.grey, blurRadius: 15, offset: Offset(5, 5)),
              const BoxShadow(
                  color: Colors.white,
                  blurRadius: 14,
                  offset: Offset(-5, -5)),
            ]),

        child: Center(child: child,)
      ),
    );
  }
}
