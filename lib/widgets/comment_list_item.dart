import 'package:flutter/material.dart';
import 'package:ddadot/model/comment_model.dart';

class CommentListItem extends StatelessWidget {
  CommentListItem({required this.commentModel});

  CommentModel commentModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text(commentModel.nickName),
              Text(commentModel.town),
            ],
          ),
          Text(commentModel.text),
          Row(
            children: [
              Text(commentModel.date),
              TextButton.icon(icon: Icon(Icons.chat_bubble_outline),
                label: Text(commentModel.commentNum.toString()),
                onPressed: (){},
              )
            ],
          ),
        ],
      ),
    );
  }
}
