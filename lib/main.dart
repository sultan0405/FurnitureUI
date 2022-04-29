import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:ui_learn/furnuture_ui/screens/category/category_screen.dart';
import 'package:ui_learn/furnuture_ui/screens/home/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Material App',
      theme: ThemeData(primaryColor: Color.fromARGB(255, 1, 31, 167)),
      debugShowCheckedModeBanner: false,
      home:  HomeScreen()
    );
  }
}