import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

import 'package:ddadot/utils/utils.dart';
import 'package:ddadot/model/post_madel.dart';

class PostListItem extends StatefulWidget {
  PostListItem({required this.postModel});

  PostModel postModel;

  @override
  State<PostListItem> createState() => _PostListItemState();
}

class _PostListItemState extends State<PostListItem> {
  bool isMore = false;
  final _currentPageNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Row(
              children: [
                Text(widget.postModel.nickName),
                Spacer(),
                Text(widget.postModel.dateTime),
                IconButton(
                  onPressed: () {  },
                  icon: Icon(Icons.more_vert),
                ),
              ],
            ),
            Visibility(
              visible: widget.postModel.images.length > 0,
              child: Container(
                height: 360.h,
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    PageView.builder(
                        controller: PageController(initialPage: 0),
                        itemCount: widget.postModel.images.length,
                        itemBuilder: (BuildContext context, int index) {
                          return  Center(
                            child: Image.asset(widget.postModel.images[index],
                              width: double.infinity,
                              height: 360.h,
                              fit: BoxFit.fitHeight,
                            ),
                          );
                        },
                        onPageChanged: (int index){
                          _currentPageNotifier.value = index;
                        },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CirclePageIndicator(
                        dotColor: Colors.black12,
                        selectedDotColor: Colors.orangeAccent,
                        size: 8.w,
                        selectedSize: 10.w,
                        itemCount: widget.postModel.images.length,
                        currentPageNotifier: _currentPageNotifier,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Text(widget.postModel.category),
                SizedBox(width: 10.w,),
                Text(widget.postModel.title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                ),
                Spacer(),
                Text(widget.postModel.town),
              ],
            ),
            Text(widget.postModel.text,
              maxLines: isMore ? null : 3,
              overflow: isMore ? TextOverflow.visible : TextOverflow.ellipsis,
            ),
            Visibility(
                visible: !isMore && Utils.hasTextOverflow(widget.postModel.text, TextStyle(),maxLines: 3, maxWidth: 300.w),
                child: Row(
                  children: [
                    Spacer(),
                    TextButton( child: Text('더보기'),
                      onPressed: () {
                        setState(() {
                          isMore = true;
                        });
                      },
                    ),
                  ],
                )
            ),
            Divider(),
            Row(
              children: [
                TextButton.icon(icon: Icon(Icons.favorite),
                  label: Text(widget.postModel.likeNum.toString()),
                  onPressed: (){},
                ),
                TextButton.icon(icon: Icon(Icons.chat_bubble_outline),
                  label: Text(widget.postModel.chatNum.toString()),
                  onPressed: (){},
                ),
                Spacer(),
                IconButton(icon: Icon(Icons.ios_share),
                  onPressed: (){},
                ),
                IconButton(icon: Icon(Icons.bookmark),
                  onPressed: (){},
                ),
              ],
            ),
          ],
        )
    );;
  }
}
