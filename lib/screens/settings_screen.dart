import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_list_view/group_list_view.dart';


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

class SettingsItemModel{
  String _title = "";
  String _subtext = "";
  SETTINGS_ITEMS _index = SETTINGS_ITEMS.MAX;

  get Title => _title;
  get SubText => _subtext;
  get Index => _index;

  SettingsItemModel(String title, SETTINGS_ITEMS index, {String subText =""}){
    _title = title;
    _subtext = subText;
    _index = index;
  }
}

class SettingsScreen extends StatefulWidget {

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  List<SettingsItemModel> appSettingList= [
    SettingsItemModel("다크 모드", SETTINGS_ITEMS.DARKMODE, subText: "기기 설정 따름"),
    SettingsItemModel("알림 설정",SETTINGS_ITEMS.NOTIFICATION),
    ];
  List<SettingsItemModel> helpList= [
    SettingsItemModel("공지 사항",SETTINGS_ITEMS.NOTICE),
    SettingsItemModel("도움말",SETTINGS_ITEMS.HELP),
    SettingsItemModel("고객센터",SETTINGS_ITEMS.SUPPORT),
  ];
  List<SettingsItemModel> infoList= [
    SettingsItemModel("이용 약관",SETTINGS_ITEMS.TOS,),
    SettingsItemModel("개인정보 취급 방침",SETTINGS_ITEMS.PRIVACY_POLICY),
    SettingsItemModel("버전",SETTINGS_ITEMS.VERSION,subText: "V0.0.1"),
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
    List<SettingsItemModel> items = _elements.values.toList().cast()[index.section];
    return ListTile(
      onTap: (){
        print(items[index.index].Index);
      },
      title: Text(
        items[index.index].Title,
      ),
      trailing: Visibility(
        visible: !items[index.index].SubText.toString().isEmpty,
        child: Text(
          items[index.index].SubText,
        ),
      ),
    );
  }
}
