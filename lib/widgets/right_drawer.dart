import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum DRAWER_ITEMS{
  PROFILE,
  HOME,
  BOOKMARK,
  MY_POST,
  ALARM,
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
    DrawerItemModel("북마크",Icons.bookmark,DRAWER_ITEMS.HOME),
    DrawerItemModel("내가 작성한 글",Icons.library_books,DRAWER_ITEMS.HOME),
    DrawerItemModel("알림",Icons.notifications,DRAWER_ITEMS.ALARM),
    DrawerItemModel("설정",Icons.settings,DRAWER_ITEMS.SETTINGS),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180.w,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: DRAWER_ITEMS.MAX.index,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) return _getHeader(context);
          return _getListItem(index - 1);
        },
      )
    );
  }

  _getHeader(context){
    return GestureDetector(
      onTap: (){
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

  _getListItem(index){
    return ListTile(
      leading: Icon(drawerList[index]._icon),
      title: Text(drawerList[index]._title),
      onTap: (){
        print(drawerList[index]._title);
      },
    );
  }
}