import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:anonymous_forum/screens/login_screen.dart';
import 'package:anonymous_forum/screens/main_screen.dart';

late SharedPreferences prefs;
late Widget _firstScreen = LoginScreen();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();

  if(prefs.getBool("autoLogin") ?? true){    //TEST CODE
  // if(prefs.getBool("autoLogin") ?? false){
    _firstScreen = MainScreen();
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 690),
        builder: () => MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: _firstScreen,
        )
    );
  }
}