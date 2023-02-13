import 'package:flutter/material.dart';
import 'package:untitled/ui_loginregister/signinbutton.dart';

import 'customtextfield.dart';

class HomeScreen_Loginregister extends StatelessWidget {
  const HomeScreen_Loginregister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person,size: 60,),
          SizedBox(height: 20,),

          Text('HELLO AGAIN !',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),),
          SizedBox(height: 10,),
          Text('Welcome back, you\'ve been missed!',style: TextStyle(fontSize: 20),),
          SizedBox(height: 50,),
          CustomTextField(hint: 'Enter Email here'),
            SizedBox(height: 10,),
           CustomTextField(hint: 'Enter Password',isitpassword: true,),
            SizedBox(height: 20,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SignInButton(title: 'Sign In'),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not a Member',style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),),

                SizedBox(width: 5,),
              Text('Register now',style: TextStyle(fontSize:15,color: Colors.blue,fontWeight: FontWeight.bold),),
            ],),
            Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('Exit '),
              IconButton(onPressed: (){
                Navigator.of(context).pop();
              }, icon: Icon(Icons.logout)),
            ],)



          ],),
      )
    );
  }
}
