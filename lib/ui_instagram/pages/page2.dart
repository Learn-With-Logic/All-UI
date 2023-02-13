import 'package:flutter/material.dart';
import 'package:untitled/ui_instagram/showgrid.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: false,

        title: Padding(
          padding: EdgeInsets.all(20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.grey,
              child: Row(
                  children: [
                  Icon(Icons.search,color: Colors.black,),
                  SizedBox(width: 4,),
                  Container(
                      color: Colors.grey,
                      child: Text('Search',style: TextStyle(color: Colors.grey.shade400),)),
                ],),
            ),
          ),
        ),
      ),
      body: ShowGrid(gridnumber: 3,),
    );
  }
}
