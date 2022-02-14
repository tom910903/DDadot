import 'package:flutter/material.dart';

class ListItemModel{
  String title;
  String subText;
  IconData icon;
  dynamic index;
  bool isExpanded;
  bool isChecked;

  ListItemModel(this.title, this.index, {this.subText = "", this.icon = Icons.home, this.isExpanded = false, this.isChecked = false});
}