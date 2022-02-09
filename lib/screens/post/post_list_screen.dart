import 'package:flutter/material.dart';

import 'package:ddadot/widgets/post_list_item.dart';
import 'package:ddadot/model/post_madel.dart';

class PostListScreen extends StatefulWidget {
  const PostListScreen({Key? key}) : super(key: key);

  @override
  State<PostListScreen> createState() => _PostListScreenState();
}

class _PostListScreenState extends State<PostListScreen> {

  static const List<String> images = <String>['assets/images/pictures/img1.JPG','assets/images/pictures/img2.JPG','assets/images/pictures/img3.JPG','assets/images/pictures/img4.JPG','assets/images/pictures/img5.JPG'];
  static const String tempText = 'Alternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.Import itAlternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.Import itAlternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.Import itAlternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.Import itAlternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.Import itAlternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.Import itAlternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.Import itAlternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.Import itAlternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.Import itAlternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.Import itAlternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.Import itAlternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.Import itAlternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.Import itAlternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.Import it';

  final List<PostModel> postModelList = [
    PostModel(nickName: 'user1', category: 'category1', dateTime: '2022-01-21', title: 'title1', town: '수지구', text: tempText),
    PostModel(nickName: 'user2', category: 'category2', dateTime: '2022-01-21', title: 'title2', town: '수지구'),
    PostModel(nickName: 'user3', category: 'category3', dateTime: '2022-01-21', title: 'title3', town: '수지구', images: images, ),
    PostModel(nickName: 'user4', category: 'category4', dateTime: '2022-01-21', title: 'title4', town: '수지구'),
    PostModel(nickName: 'user5', category: 'category5', dateTime: '2022-01-21', title: 'title5', town: '수지구', text: tempText, images: images),
    PostModel(nickName: 'user6', category: 'category6', dateTime: '2022-01-21', title: 'title6', town: '수지구'),
    PostModel(nickName: 'user7', category: 'category7', dateTime: '2022-01-21', title: 'title7', town: '수지구'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: postModelList.length,
      separatorBuilder: (BuildContext context, int index) { return Divider(thickness: 1); },
      itemBuilder: (BuildContext context, int index) {
        return PostListItem(
          postModel: postModelList[index],
        );
      },
    );
  }
}
