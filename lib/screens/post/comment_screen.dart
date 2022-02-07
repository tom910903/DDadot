import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ddadot/widgets/comment_list_item.dart';
import 'package:ddadot/model/comment_model.dart';

class CommentScreen extends StatefulWidget {
  CommentScreen({required this.title});

  String title;

  static const String tempText = 'Alternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.Import itAlternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.Import itAlternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.Import itAlternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.Import itAlternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.Import itAlternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.Import itAlternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.Import itAlternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.Import itAlternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.Import itAlternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.Import itAlternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.Import itAlternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.Import itAlternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.Import itAlternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.Import it';

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  List<CommentModel> commentList = [
    CommentModel(nickName: 'nick Name', town: '수지구', text: CommentScreen.tempText, date: '2022-12-21'),
    CommentModel(nickName: 'nick Name', town: '수지구', text: CommentScreen.tempText, date: '2022-12-21'),
    CommentModel(nickName: 'nick Name', town: '수지구', text: CommentScreen.tempText, date: '2022-12-21'),
    CommentModel(nickName: 'nick Name', town: '수지구', text: CommentScreen.tempText, date: '2022-12-21'),
    CommentModel(nickName: 'nick Name', town: '수지구', text: CommentScreen.tempText, date: '2022-12-21'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CommentListItem(commentModel: commentList[index]),
            );
          },
          separatorBuilder: (BuildContext context, int index) { return Divider(thickness: 1); },
          itemCount: commentList.length
      ),
      bottomSheet: TextFormField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          prefixIcon: Visibility(
            child: TextButton.icon( label: Text('nickName',
              style: TextStyle(
                  fontSize: 10.w
              ),
            ),
              icon: Icon(Icons.close,
                size: 10.w,
              ),
              onPressed: () {
              },
            ),
          ),
          suffixIcon: IconButton(
              onPressed: () {
              },
              icon:Icon(Icons.arrow_circle_up,
              )
          ),
          hintText: 'input text...',
          hintStyle: TextStyle(color: Colors.grey),
          contentPadding: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
