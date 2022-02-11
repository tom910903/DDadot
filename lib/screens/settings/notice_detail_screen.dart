import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoticeDetailScreen extends StatelessWidget {
  const NoticeDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String text = "kjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\nkjsdfghokladhfgi\n";

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("공지사항",),
        ),
        body: Container(
          padding: EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('title',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Spacer(),
                    Text('2022-02-30'),
                  ],
                ),
                Text(text),
              ],
            ),
          ),
        )
    );
  }
}
