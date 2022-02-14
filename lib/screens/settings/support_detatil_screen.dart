import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SupportDetailScreen extends StatelessWidget {

  String title = "title";
  String text = "text";

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(text),
              SizedBox(height: 10.h,),
              Text('re: title',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.sp
                ),
              ),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}
