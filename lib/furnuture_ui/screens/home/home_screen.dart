import 'dart:js';

import 'package:flutter/material.dart';
import 'package:ui_learn/furnuture_ui/data/fake.dart';
import 'package:ui_learn/furnuture_ui/screens/category/category_screen.dart';
import 'package:ui_learn/furnuture_ui/screens/home/widgets/category_card.dart';
import 'package:ui_learn/furnuture_ui/screens/home/widgets/image_card.dart';
import 'package:ui_learn/furnuture_ui/screens/home/widgets/promo_card.dart';
import 'package:ui_learn/furnuture_ui/widgets/app_bottom_nav.dart';

import 'widgets/header.dart';
import 'widgets/section.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  
  void onSelectedCAtegory(BuildContext context, Widget widget){
    Navigator.of(context).push(MaterialPageRoute(builder: (context){
      return widget;
    }));
  
  }

  @override   
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar:  AppBottomNavigation(),
        body: ListView(
            children: [
              Header(),
              Section(
                title: 'Categories',
                children: Fake.categories.map((e) => CategoryCard( iconPath: e.iconPath, onTap: (){
                  onSelectedCAtegory(context,CategoryScreen());
                }, title: e.title,)).toList(),
              ),
              Section(
                title: 'Today\'s Promo',
                children: Fake.promotions.map((p) => PromoCard(
                  bgImgPath: p.bgImgPath, 
                  subtitle: p.subtitle, 
                  title: p.title,
                  imgPath: p.imgPath,
                  tag:p.tag,
                  caption: p.caption,
                  )).toList(),
              ),
               Section(
                title: 'Trending Furniture',
                children: Fake.trends.map((e) => ImageCard(imgPath: e,)).toList(),
              ),
               Section(
                title: 'Featured Furniture',
                children: Fake.featurs.map((e) => ImageCard( imgPath: e,)).toList(),
              ),
            ],
        ),
      ),
    );
  }
}