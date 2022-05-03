import 'package:flutter/material.dart';

import 'data/db.dart';
import 'models/category_list_item.dart';
import 'widgets/category_list.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({Key? key}) : super(key: key);
  final String title='Categories';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(title, style: const TextStyle(color: Colors.blueGrey),),
      ),
      body: CategoryList(),
    );
  }
}
