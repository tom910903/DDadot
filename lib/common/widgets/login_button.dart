import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final String text;
  final String iconPath;
  final Color textColor;

  LoginButton({ required this.onPressed,
    required this.backgroundColor,
    required this.iconPath,
    required this.text ,
    this.textColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50.h,
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(12, 5, 12, 5),
        margin: EdgeInsets.all(5),
        color: backgroundColor,
        // decoration: BoxDecoration(
        //     borderRadius: BorderRadius.all(Radius.circular(10)),
        //   color: backgroundColor,
        // ),
        child: GestureDetector(
          onTap: onPressed,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20,8,20,8),
                child: Image.asset(iconPath,
                  fit: BoxFit.fill,
                ),
              ),
              Center(
                child: Text(text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp,
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
