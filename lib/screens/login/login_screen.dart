import 'package:ddadot/common/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ddadot/common/utils/palette.dart';

import 'package:ddadot/common/widgets/login_button.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('로그인',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(icon: Icon(Icons.close),
            onPressed: (){},
          )
        ],

      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Container(
                  width: 80.w,
                  height: 80.h,
                  color: Colors.amber,
                ),
              ),
            ),
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Expanded(child: Divider(thickness: 1,)),
                        Text('   3초만에 간편 로그인   ',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp
                          ),
                        ),
                        Expanded(child: Divider(thickness: 1,)),
                      ],
                    ),
                    Column(
                      children: [
                        LoginButton(
                          onPressed: (){},
                          text: '카카오로 로그인',
                          iconPath: 'assets/images/logos/kakao.png',
                          backgroundColor: Palette.kakaoBackground,
                        ),
                        LoginButton(
                          onPressed: (){},
                          text: '네이버로 로그인',
                          iconPath: 'assets/images/logos/naver.png',
                          backgroundColor: Palette.naverBackground,
                          textColor: Colors.white,
                        ),
                        LoginButton(
                          onPressed: (){},
                          text: '구글 로그인',
                          iconPath: 'assets/images/logos/google.png',
                          backgroundColor: Palette.googleBackground,
                        ),
                      ],
                    ),
                    TextButton( child: Text('가입/로그인이 안되나요?',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                      onPressed: (){},
                    )
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
