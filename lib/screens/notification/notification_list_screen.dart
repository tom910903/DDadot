import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum NOTI_TYPE{
  NOTICE,
  LIKE,
  COMMENT,
  MAX
}

class NotiItemModel{
  String title;
  String subText;
  String dateTime;
  NOTI_TYPE type;

  NotiItemModel(this.title, this.dateTime, this.type, {this.subText = ""});
}

class NotificationListScreen extends StatelessWidget {

  List<NotiItemModel> notiList = [
    NotiItemModel("Title0", "2022-01-23 12:23", NOTI_TYPE.LIKE),
    NotiItemModel("Title1", "2022-01-23 12:23", NOTI_TYPE.NOTICE),
    NotiItemModel("Title2", "2022-01-23 12:23", NOTI_TYPE.COMMENT, subText: "text2"),
    NotiItemModel("Title3", "2022-01-23 12:23", NOTI_TYPE.COMMENT, subText: "text3"),
    NotiItemModel("Title4", "2022-01-23 12:23", NOTI_TYPE.LIKE,),
    NotiItemModel("Title5", "2022-01-23 12:23", NOTI_TYPE.COMMENT, subText: "text5"),
    NotiItemModel("Title6", "2022-01-23 12:23", NOTI_TYPE.LIKE,),
    NotiItemModel("Title7", "2022-01-23 12:23", NOTI_TYPE.COMMENT, subText: "text7"),
    NotiItemModel("Title8", "2022-01-23 12:23", NOTI_TYPE.LIKE, ),
    NotiItemModel("Title9", "2022-01-23 12:23", NOTI_TYPE.COMMENT, subText: "text9"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('알림'),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(8),
        itemCount: notiList.length,
        itemBuilder: _itemBuilder,
        separatorBuilder: (context, index) => Divider(),
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return ListTile(
      onTap: (){
      },
      leading: _getIcon(notiList[index].type),
      title: Row(
        children: [
          Text(
            notiList[index].title,
          ),
          Spacer(),
          Text(
            notiList[index].dateTime,
            style: TextStyle(
                fontSize: 10.sp
            ),
          ),
        ],
      ),
      subtitle: Visibility(
          visible: notiList[index].type == NOTI_TYPE.COMMENT,
          child: Text(notiList[index].subText)
      ),
    );
  }

  _getIcon(type)
  {
    if(type == NOTI_TYPE.LIKE)
    {
      return Icon(Icons.favorite);
    }else if(type == NOTI_TYPE.COMMENT)
    {
      return Icon(Icons.chat_bubble_outline);
    }
    else
    {
      return Icon(Icons.notifications);
    }
  }
}