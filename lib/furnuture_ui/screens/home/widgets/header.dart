import 'package:flutter/material.dart';
import 'package:ui_learn/furnuture_ui/data/fake.dart';
import 'package:ui_learn/furnuture_ui/screens/home/widgets/search_bar.dart';
import 'package:ui_learn/furnuture_ui/widgets/cart.dart';


class Header extends StatefulWidget {
  Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      width: MediaQuery.of(context).size.width,
      // height: 100,
      // color: Colors.blue,
      padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Furniture Shop', 
                style: TextStyle(fontSize: 28, height: 1),),
              Cart(numberOfItemsInCart: Fake.numberOfItemsInCart)
            ],
          ),
          const Text(
            'Get unique furniture for your home',
          style: TextStyle(fontSize: 15.0, color: Colors.black38), )
           ,
           SearchBar()
        ],
      ),
    );
  }
}