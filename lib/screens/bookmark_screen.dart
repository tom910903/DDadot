import 'package:flutter/material.dart';

import 'package:ddadot/screens/post_list_screen.dart';

class BookmarkScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('북마크'),
      ),
      body: PostListScreen(),
    );
  }
}
