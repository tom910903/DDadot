import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ddadot/common/model/list_item_model.dart';

import 'package:ddadot/screens/settings/profile_screen.dart';
import 'package:ddadot/screens/post/my_post_screen.dart';
import 'package:ddadot/screens/notification/notification_list_screen.dart';
import 'package:ddadot/screens/post/bookmark_screen.dart';
import 'package:ddadot/screens/settings/settings_screen.dart';

enum DRAWER_ITEMS{
  PROFILE,
  BOOKMARK,
  MY_POST,
  NOTIFICATION,
  SETTINGS,
  MAX
}

class RightDrawer extends StatelessWidget {

  List<ListItemModel> drawerList= [
    ListItemModel("북마크",DRAWER_ITEMS.BOOKMARK,icon: Icons.bookmark,),
    ListItemModel("내가 작성한 글",DRAWER_ITEMS.MY_POST,icon: Icons.library_books,),
    ListItemModel("알림",DRAWER_ITEMS.NOTIFICATION,icon: Icons.notifications,),
    ListItemModel("설정",DRAWER_ITEMS.SETTINGS,icon: Icons.settings,),
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
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => _getScreen(DRAWER_ITEMS.PROFILE))
        );
        print('Header');
      },
      child: Container(
        padding: EdgeInsets.all(12),
        height: 100.h,
        color: Theme.of(context).primaryColor,
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
      leading: Icon(drawerList[index].icon),
      title: Text(drawerList[index].title),
      onTap: (){
        Navigator.pop(context);
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => _getScreen(drawerList[index].index))
        );
        print(drawerList[index].title);
      },
    );
  }

  _getScreen(index){
    switch(index)
    {
      case DRAWER_ITEMS.PROFILE:
        return ProfileScreen();
      case DRAWER_ITEMS.BOOKMARK:
        return BookmarkScreen();
      case DRAWER_ITEMS.MY_POST:
        return MyPostScreen();
      case DRAWER_ITEMS.NOTIFICATION:
        return NotificationListScreen();
      case DRAWER_ITEMS.SETTINGS:
        return SettingsScreen();
      default:
        return Scaffold();
    }
  }
}