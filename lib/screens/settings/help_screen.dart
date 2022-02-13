import 'package:flutter/material.dart';

import 'package:ddadot/common/model/list_item_model.dart';

class HelpScreen extends StatefulWidget {

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  List<ListItemModel> helpList = [
    ListItemModel("Title0", 0, subText: "text0", icon: Icons.keyboard_arrow_down),
    ListItemModel("Title1", 1, subText: "text1", icon: Icons.keyboard_arrow_down),
    ListItemModel("Title2", 2, subText: "text2", icon: Icons.keyboard_arrow_down),
    ListItemModel("Title3", 3, subText: "text3", icon: Icons.keyboard_arrow_down),
    ListItemModel("Title4", 4, subText: "text4", icon: Icons.keyboard_arrow_down),
    ListItemModel("Title5", 5, subText: "text5", icon: Icons.keyboard_arrow_down),
    ListItemModel("Title6", 6, subText: "text6", icon: Icons.keyboard_arrow_down),
    ListItemModel("Title7", 7, subText: "text7", icon: Icons.keyboard_arrow_down),
    ListItemModel("Title8", 8, subText: "text8", icon: Icons.keyboard_arrow_down),
    ListItemModel("Title9", 9, subText: "text9", icon: Icons.keyboard_arrow_down),
    ListItemModel("Title10", 10, subText: "text10", icon: Icons.keyboard_arrow_down),
    ListItemModel("Title11", 11, subText: "text11text11text11text11text11text11text11text11text11text11text11text11text11text11text11text11text11text11text11text11text11text11text11text11text11text11text11text11text11text11text11", icon: Icons.keyboard_arrow_down),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('도움말'),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(8),
        itemCount: helpList.length,
        itemBuilder: _itemBuilder,
        separatorBuilder: (context, index) => Divider(),
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          onTap: (){
            setState(() {
              helpList[index].isExpanded = !helpList[index].isExpanded;
              if(helpList[index].isExpanded)
              {
                helpList[index].icon = Icons.keyboard_arrow_up;
              }
              else
              {
                helpList[index].icon = Icons.keyboard_arrow_down;
              }
            });
          },
          title: Text(
            helpList[index].title,
          ),
          trailing: Icon(helpList[index].icon),
        ),
        Visibility(
          visible: helpList[index].isExpanded,
            child: Text(helpList[index].subText),
        ),
      ],
    );
  }
}
