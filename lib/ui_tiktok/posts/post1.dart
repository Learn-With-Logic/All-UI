import 'package:flutter/material.dart';
import 'package:untitled/ui_tiktok/template.dart';


class Post1 extends StatelessWidget {
  const Post1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Template(
          username: 'Irfan',
          num_of_likes: '100',
          num_of_messages: '20',
          num_of_sends: '200',
          postdetail: 'My First post',
    );
  }
}
