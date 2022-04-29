import 'package:flutter/material.dart';

class AppBottomNavigation extends StatefulWidget {
   const AppBottomNavigation({Key? key}) : super(key: key);

  @override
  State<AppBottomNavigation> createState() => _AppBottomNavigationState();
}

class _AppBottomNavigationState extends State<AppBottomNavigation> {

  int _currentIndex = 0;
  List<MenuItemModel> menuItems = [
    MenuItemModel(widget: const Icon(Icons.home), label: 'Home'),
    MenuItemModel(widget: const Icon(Icons.message), label: 'Message'),
    MenuItemModel(widget:const   Icon(Icons.credit_card), label: 'Card'),
    MenuItemModel(widget:const  Icon(Icons.person), label: 'Profile'),
  ];

  void _setIndex(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (i)=> _setIndex(i),
      currentIndex: _currentIndex,
      showUnselectedLabels: true,
      elevation: 32.0,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Theme.of(context).primaryColor,
      items: menuItems.map((e) => BottomNavigationBarItem(icon:e.widget , label:e.label )).toList()
    );
  }
}

class MenuItemModel{
  final Widget widget;
  final String label;

  MenuItemModel({required this.widget, required this.label});
}