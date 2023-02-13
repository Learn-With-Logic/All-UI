import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SignInButton extends StatelessWidget {

  final color;
  final String title;
  const SignInButton({Key? key,this.color=Colors.blue,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.purple,
        borderRadius: BorderRadius.circular(20),

      ),
      child: Center(child: Text(title,style: GoogleFonts.bellefair(fontSize: 26,color: Colors.white),)),
    );
  }
}
