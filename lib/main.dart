import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'package:ddadot/screens/login/login_screen.dart';
import 'package:ddadot/screens/post/main_screen.dart';

late SharedPreferences prefs;
late Widget _firstScreen = LoginScreen();

Future<void> main() async {
  FlutterNativeSplash.removeAfter(initialization);

  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();

  if(prefs.getBool("autoLogin") ?? true){    //TEST CODE
  // if(prefs.getBool("autoLogin") ?? false){
    _firstScreen = MainScreen();
  }

  runApp(MyApp());
}

void initialization(BuildContext context) async {
  print('ready in 3...');
  await Future.delayed(const Duration(seconds: 1));
  print('ready in 2...');
  await Future.delayed(const Duration(seconds: 1));
  print('ready in 1...');
  await Future.delayed(const Duration(seconds: 1));
  print('go!');
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
            primarySwatch: Colors.orange,
          ),
          darkTheme: ThemeData(
              // scaffoldBackgroundColor: Colors.black,
              colorScheme: ColorScheme.dark(),
              appBarTheme: AppBarTheme(
                backgroundColor: Colors.deepPurple,
              ),
            primaryColor: Colors.deepPurple,
            brightness: Brightness.dark,
          ),
          themeMode: ThemeMode.dark, // TEXT CODE
          // themeMode: ThemeMode.system

          home: _firstScreen,
        )
    );
  }
}