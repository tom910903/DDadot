import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ddadot/screens/my_post_screen.dart';
import 'package:ddadot/screens/bookmark_screen.dart';

enum DRAWER_ITEMS{
  PROFILE,
  HOME,
  BOOKMARK,
  MY_POST,
  NOTIFICATION,
  SETTINGS,
  MAX
}

class DrawerItemModel{
  String _title = "";
  IconData _icon = Icons.settings;
  DRAWER_ITEMS _index = DRAWER_ITEMS.MAX;

  get Title => _title;
  get Icon => _icon;
  get Index => _index;

  DrawerItemModel(String title, IconData icon, DRAWER_ITEMS index){
    _title = title;
    _icon = icon;
    _index = index;
  }
}

class RightDrawer extends StatelessWidget {

  List<DrawerItemModel> drawerList= [
    DrawerItemModel("홈",Icons.home,DRAWER_ITEMS.HOME),
    DrawerItemModel("북마크",Icons.bookmark,DRAWER_ITEMS.BOOKMARK),
    DrawerItemModel("내가 작성한 글",Icons.library_books,DRAWER_ITEMS.MY_POST),
    DrawerItemModel("알림",Icons.notifications,DRAWER_ITEMS.NOTIFICATION),
    DrawerItemModel("설정",Icons.settings,DRAWER_ITEMS.SETTINGS),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 180.w,
        child: Drawer(
          child: ListView.builder(
            padding: const EdgeInsets.all(0),
            itemCount: DRAWER_ITEMS.MAX.index,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) return _getHeader(context);
              return _getListItem(context, index - 1);
            },
          ),
        )
    );
  }

  _getHeader(context){
    return GestureDetector(
      onTap: (){
        Navigator.pop(context);
        print('Header');
      },
      child: Container(
        padding: EdgeInsets.all(12),
        height: 100.h,
        color: Theme.of(context).colorScheme.primary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nick Name',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text('수지구',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _getListItem(context, index){
    return ListTile(
      leading: Icon(drawerList[index].Icon),
      title: Text(drawerList[index].Title),
      onTap: (){
        Navigator.pop(context);
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => _getScreen(drawerList[index].Index))
        );
        print(drawerList[index].Title);
      },
    );
  }

  _getScreen(index){
    switch(index)
    {
      // case DRAWER_ITEMS.HOME:
      //   return BookmarkScreen();
      case DRAWER_ITEMS.BOOKMARK:
        return BookmarkScreen();
      case DRAWER_ITEMS.MY_POST:
        return MyPostScreen();
      // case DRAWER_ITEMS.NOTIFICATION:
      //   return BookmarkScreen();
      // case DRAWER_ITEMS.SETTINGS:
      //   return BookmarkScreen();
      default:
        return Scaffold();
    }
  }
}