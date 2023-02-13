import 'package:flutter/material.dart';
import 'package:untitled/ui_tiktok/template.dart';


class Post2 extends StatelessWidget {
  const Post2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Template(username: 'Lyza', postdetail: 'I am Lyza', num_of_likes: '80', num_of_messages: '40', num_of_sends: '11');
  }
}
