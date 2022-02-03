import 'package:flutter/material.dart';

class WritePostScreen extends StatelessWidget {
  const WritePostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(child: Text('취소'),
          onPressed: () {
          Navigator.pop(context);
          },
        ),
        actions: [
          TextButton(child: Text('등록'),
            onPressed: () {  },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Row(
                children: [
                  TextButton.icon(
                    onPressed: (){},
                    icon: Text('수지구',),
                    label: Icon(Icons.arrow_drop_down,),
                  ),
                  Spacer(),
                  IconButton(icon: Icon(Icons.camera_alt),
                    onPressed: (){},
                  )
                ],
              ),
              TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                  hintText: 'input title...',
                  hintStyle: TextStyle(color: Colors.grey),
                  contentPadding: EdgeInsets.all(10),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: 'input text...',
                  hintStyle: TextStyle(color: Colors.grey),
                  contentPadding: EdgeInsets.all(10),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
