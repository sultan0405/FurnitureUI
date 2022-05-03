import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'Dropdown UI/custom_drop_down.dart';
import 'Dropdown UI/screens/Login/sign_up.dart';
import 'Dropdown UI/screens/Profile/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: const Color.fromARGB(255, 1, 31, 167)),
      debugShowCheckedModeBanner: false,
      home: const  ProfileScreen()
    );
  }
}