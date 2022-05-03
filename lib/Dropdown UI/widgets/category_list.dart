import 'package:flutter/material.dart';

import '../data/db.dart';



class  CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return SingleChildScrollView(
      child: Column(
        children: DataBase.items.map((e) => e.isDropDown? e.dropDWidget : e.defWidget).toList(),
        )
      );
}
}