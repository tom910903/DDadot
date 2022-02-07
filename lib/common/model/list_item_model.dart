import 'package:flutter/material.dart';

class ListItemModel{
  String title;
  String subText;
  IconData icon;
  dynamic index;

  ListItemModel(this.title, this.index, {this.subText = "", this.icon = Icons.home});
}