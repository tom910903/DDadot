import 'package:flutter/material.dart';
import 'package:ddadot/common/utils/utils.dart';

class TextScrollScreen extends StatelessWidget {
  TextScrollScreen({required this.title, required this.filePath});

  String title;
  String filePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: FutureBuilder(
              future: Utils.loadTextFile(filePath),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                String text = snapshot.data.toString();
                return Text(text);
              },
          ),
        ),
      ),
    );
  }
}
