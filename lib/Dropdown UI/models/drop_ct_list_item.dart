import 'package:flutter/cupertino.dart';

class DropDCategoryListItemModel{
   final Widget defWidget;
  final Widget dropDWidget;
  final bool isDropDown;
  DropDCategoryListItemModel({ required this.dropDWidget, required this.isDropDown, required this.defWidget});
}