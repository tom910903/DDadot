import 'package:flutter/material.dart';
import 'package:ddadot/widgets/right_drawer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: RightDrawer(),
      body: Center(child: Text('main')),
    );
  }
}
