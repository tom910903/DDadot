import 'package:flutter/material.dart';

import 'package:ddadot/screens/settings/write_support_screen.dart';
import 'package:ddadot/screens/settings/support_detatil_screen.dart';

import 'package:ddadot/common/model/list_item_model.dart';

class SupportScreen extends StatelessWidget {

  List<ListItemModel> supportList = [
    ListItemModel("Title0", 0, subText: "2022-03-23", ),
    ListItemModel("Title1", 1, subText: "2022-03-23", isChecked: true),
    ListItemModel("Title2", 2, subText: "2022-03-23", ),
    ListItemModel("Title3", 3, subText: "2022-03-23", isChecked: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('고객센터'),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(8),
        itemCount: supportList.length,
        itemBuilder: _itemBuilder,
        separatorBuilder: (context, index) => Divider(),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'write',
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context){
                return WriteSupportScreen();
              })
          );
        },
        child: Icon(Icons.create),
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return ListTile(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context){
              return SupportDetailScreen();
            })
        );
      },
      title: Text(supportList[index].title,),
      subtitle: Text(supportList[index].subText,),
      trailing: Visibility(
          visible: supportList[index].isChecked,
          child: Icon(Icons.check)
      ),
    );
  }
}
