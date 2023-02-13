import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final String hint;
  final bool isitpassword;
  const CustomTextField({Key? key,required this.hint,this.isitpassword=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(20),
          ),

          child: TextField(
            obscureText: isitpassword,
            decoration: InputDecoration(

              border: InputBorder.none,
              hintText: hint,

            ),
          )),
    );
  }
}
