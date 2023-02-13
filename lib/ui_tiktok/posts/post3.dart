import 'package:flutter/material.dart';
import 'package:untitled/ui_tiktok/template.dart';


class Post3 extends StatelessWidget {
  const Post3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Template(username: 'Aymaan', postdetail: 'I am Aymaan', num_of_likes: '1000', num_of_messages: '200', num_of_sends: '49');
  }
}
