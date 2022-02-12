import 'package:flutter/material.dart';

enum NOTI_ITEMS{
  PUSH_NOTI,
  NOTICE,
  COMMENT,
  LIKE,
  MAX
}

class NotiModel{
  String _title = "";
  bool _isOn = true;
  NOTI_ITEMS _index = NOTI_ITEMS.MAX;

  String get Title => _title;
  bool get IsOn => _isOn;
  NOTI_ITEMS get Index => _index;

  set Title(String title){_title = title;}
  set IsOn(bool isOn){_isOn = isOn;}
  set Index(NOTI_ITEMS index){_index = index;}

  NotiModel(String title, bool isOn, NOTI_ITEMS index)
  {
    _title = title;
    _isOn = isOn;
    _index = index;
  }
}

class NotificationSettingScreen extends StatefulWidget {

  @override
  State<NotificationSettingScreen> createState() => _NotificationSettingScreenState();
}

class _NotificationSettingScreenState extends State<NotificationSettingScreen> {
  List<NotiModel> notiModel= [
    NotiModel("푸쉬 알림", true, NOTI_ITEMS.PUSH_NOTI),
    NotiModel("공지사항",true, NOTI_ITEMS.NOTICE),
    NotiModel("댓글",true, NOTI_ITEMS.COMMENT),
    NotiModel("좋아",true, NOTI_ITEMS.LIKE),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    notiModel[NOTI_ITEMS.PUSH_NOTI.index].IsOn = true;
    notiModel[NOTI_ITEMS.NOTICE.index].IsOn = true;
    notiModel[NOTI_ITEMS.COMMENT.index].IsOn = true;
    notiModel[NOTI_ITEMS.LIKE.index].IsOn = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('알림 설정'),
      ),
      body: Container(
        child: ListView.separated(
          padding: EdgeInsets.all(8),
          itemCount: notiModel[NOTI_ITEMS.PUSH_NOTI.index].IsOn ? notiModel.length : 1,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(notiModel[index].Title),
              trailing: Switch(
                value: notiModel[index].IsOn,
                onChanged: (bool value) {
                  setState(() {
                    notiModel[index].IsOn = value;
                    print(notiModel[index].IsOn);
                  });
                },
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) => Divider(),
        ),
      ),
    );
  }
}
