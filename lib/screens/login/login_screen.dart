import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ddadot/common/widgets/login_button.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(50, 120, 50, 120),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 80.w,
              height: 80.w,
              color: Colors.amber,
            ),
            Spacer(),
            LoginButton(
              onPressed: (){},
              text: '구글 로그인',
              iconPath: 'assets/images/logos/google.png',
              backgroundColor: Colors.blueAccent,
              textColor: Colors.white,
            ),
            LoginButton(
              onPressed: (){},
              text: '카카오로 로그인',
              iconPath: 'assets/images/logos/kakao.png',
              backgroundColor: Colors.yellow,
            ),
            LoginButton(
              onPressed: (){},
              text: '네이버로 로그인',
              iconPath: 'assets/images/logos/naver.png',
              backgroundColor: Colors.green,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
