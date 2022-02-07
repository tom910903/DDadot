import 'package:flutter/material.dart';

import 'package:ddadot/screens/post/post_list_screen.dart';

class MyPostScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('내가 작성한 글'),
      ),
      body: PostListScreen(),
    );
  }
}
