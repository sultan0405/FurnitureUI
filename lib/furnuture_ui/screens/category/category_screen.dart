import 'package:flutter/material.dart';
import 'package:ui_learn/furnuture_ui/screens/category/widgets/furniture_grid_item.dart';
import 'package:ui_learn/furnuture_ui/screens/category/widgets/header/header_silver.dart';
import 'package:ui_learn/furnuture_ui/widgets/app_bottom_nav.dart';

import '../../data/fake.dart';


class CategoryScreen extends StatefulWidget {
  CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar:  AppBottomNavigation(),
      body: SafeArea(child:CustomScrollView(
        slivers: [
        SliverPersistentHeader(
          pinned: true,
          floating: true,
          delegate:  HeaderSliver(maxExtent: 120, minExtent: 120)
        ),
        SliverGrid.count(
          crossAxisCount:2,
          childAspectRatio: 0.65,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          children:Fake.furniture.map((e) => FurnitureGridItem(item: e)).toList()
           )

      ],) )
      );
  }
}