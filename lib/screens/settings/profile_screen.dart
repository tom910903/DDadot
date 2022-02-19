import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('프로필'),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Text("닉네임"),
            TextButton.icon(
              onPressed: (){},
              icon: Text('수지구',
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              label: Icon(Icons.arrow_drop_down,
                color: Colors.white,
              ),
            ),
            TextButton( child: Text('로그아웃'),
              onPressed: () {  },
            ),
            TextButton( child: Text('회원탈퇴'),
              onPressed: () {  },
            )
          ],
        ),
      ),
    );
  }
}
