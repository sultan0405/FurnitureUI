import 'package:flutter/material.dart';

class CategoryListItemModel{
  final Widget defWidget;
  final Widget dropDWidget;
  final bool isDropDown;
  CategoryListItemModel({required this.dropDWidget, required this.isDropDown, required this.defWidget});
}
