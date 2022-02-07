import 'package:ddadot/screens/post/comment_screen.dart';
import 'package:flutter/material.dart';
import 'package:ddadot/widgets/right_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ddadot/screens/post/post_list_screen.dart';
import 'package:ddadot/screens/post/write_post_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<Tab> _tabs = [
      _getTab(Icons.home, '홈'),
      _getTab(Icons.star, '관심 항목'),
    ];

    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: TextButton.icon(
            onPressed: (){},
            icon: Text('수지구',
              style: TextStyle(
                fontSize: 15.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            label: Icon(Icons.arrow_drop_down,
              color: Colors.white,
            ),
          ),
          bottom: TabBar(
            tabs: _tabs,
          ),
        ),
        endDrawer: RightDrawer(),
        body: TabBarView(
          children: [
            PostListScreen(),
            PostListScreen(),
          ],
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton.small(
              heroTag: 'sort',
              onPressed: () {  },
              child: Icon(Icons.sort),
            ),
            SizedBox(
              width: 10.w,
            ),
            FloatingActionButton(
              heroTag: 'write',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                      return WritePostScreen();
                    })
                );
              },
              child: Icon(Icons.create),
            ),
          ],
        ),
      ),
    );
  }

  _getTab(icon, text){
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          SizedBox(width: 8.w,),
          Text(text),
        ],
      ),
    );
  }
}
