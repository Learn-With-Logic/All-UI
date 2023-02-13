import 'package:flutter/material.dart';
import 'package:untitled/ui_tiktok/posts/post1.dart';
import 'package:untitled/ui_tiktok/posts/post2.dart';
import 'package:untitled/ui_tiktok/posts/post3.dart';


class Page1 extends StatelessWidget {
   Page1({Key? key}) : super(key: key);

  final _controller=PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          Post1(),
          Post2(),
          Post3(),
        ],
      )
    );
  }
}
