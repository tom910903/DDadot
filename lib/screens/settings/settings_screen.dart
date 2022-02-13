import 'package:flutter/material.dart';
import 'package:group_list_view/group_list_view.dart';

import 'package:ddadot/common/model/list_item_model.dart';
import 'package:ddadot/screens/settings/notice_list_screen.dart';
import 'package:ddadot/screens/settings/notification_setting_screen.dart';
import 'package:ddadot/screens/settings/help_screen.dart';
import 'package:ddadot/screens/settings/text_scroll_screen.dart';

enum SETTINGS_ITEMS{
  DARKMODE,
  NOTIFICATION,
  NOTICE,
  SUPPORT,
  HELP,
  TOS,
  PRIVACY_POLICY,
  VERSION,
  MAX
}

class SettingsScreen extends StatefulWidget {

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  List<ListItemModel> appSettingList= [
    ListItemModel("다크 모드", SETTINGS_ITEMS.DARKMODE, subText: "기기 설정 따름"),
    ListItemModel("알림 설정",SETTINGS_ITEMS.NOTIFICATION),
    ];
  List<ListItemModel> helpList= [
    ListItemModel("공지 사항",SETTINGS_ITEMS.NOTICE),
    ListItemModel("도움말",SETTINGS_ITEMS.HELP),
    ListItemModel("고객센터",SETTINGS_ITEMS.SUPPORT),
  ];
  List<ListItemModel> infoList= [
    ListItemModel("이용 약관",SETTINGS_ITEMS.TOS,),
    ListItemModel("개인정보 취급 방침",SETTINGS_ITEMS.PRIVACY_POLICY),
    ListItemModel("버전",SETTINGS_ITEMS.VERSION,subText: "V0.0.1"),
  ];

  late Map<String, List> _elements;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _elements = {
      '앱 설정': appSettingList,
      '도움': helpList,
      '정보': infoList,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('설정'),
      ),
      body: GroupListView(
        sectionsCount: _elements.keys.toList().length,
        countOfItemInSection: (int section) {
          return _elements.values.toList()[section].length;
        },
        itemBuilder: _itemBuilder,
        groupHeaderBuilder: (BuildContext context, int section) {
          return Text(
            _elements.keys.toList()[section],
          );
        },
        separatorBuilder: (context, index) => Divider(),
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, IndexPath index) {
    List<ListItemModel> items = _elements.values.toList().cast()[index.section];
    return ListTile(
      onTap: (){
        print(items[index.index].index);

        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => _getScreen(items[index.index].index))
        );
      },
      title: Text(
        items[index.index].title,
      ),
      trailing: Visibility(
        visible: !items[index.index].subText.isEmpty,
        child: Text(
          items[index.index].subText,
        ),
      ),
    );
  }

  _getScreen(index){
    switch(index)
    {
      // case SETTINGS_ITEMS.DARKMODE:
      case SETTINGS_ITEMS.NOTIFICATION:
        return NotificationSettingScreen();
      case SETTINGS_ITEMS.NOTICE:
        return NoticeListScreen();
      // case SETTINGS_ITEMS.SUPPORT:
      case SETTINGS_ITEMS.HELP:
        return HelpScreen();
      case SETTINGS_ITEMS.TOS:
        return TextScrollScreen(title: '이용 약관', filePath: 'assets/texts/tos.txt');
      case SETTINGS_ITEMS.PRIVACY_POLICY:
        return TextScrollScreen(title: '개인정보 취급 방침', filePath: 'assets/texts/privacy_policy.txt');
      // case SETTINGS_ITEMS.VERSION:
      default:
        return Scaffold();
    }
  }
}
