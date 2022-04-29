import 'dart:html';

import 'package:flutter/material.dart';
import 'package:ui_learn/furnuture_ui/data/fake.dart';
import 'package:ui_learn/furnuture_ui/screens/category/widgets/header/widgets/action_button.dart';
import 'package:ui_learn/furnuture_ui/widgets/cart.dart';

import 'widgets/filter_modal.dart';


class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: Offset(0.0, 10.0),
            blurRadius: 10.0
          )
        ]
      ),
      child: Container(
        // color: Colors.blue,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(
                // color: Colors.red,
                alignment: Alignment.centerLeft,
                width: 60,
                child:IconButton(
                  onPressed: (){
                   if( Navigator.canPop(context)){
                    Navigator.pop(context);
                   }
                  },
                  icon: const  Icon(Icons.chevron_left, size: 30,)),
              ),
              const Text(
                'Living Room',
                style: TextStyle(fontSize: 18),
                ),
                Container(
                  width: 80,
                  alignment: Alignment.centerLeft,
                  child: Wrap(
                    direction: Axis.horizontal,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 10.0,
                    children: [
                      Icon(Icons.search),
                      Cart(numberOfItemsInCart: Fake.numberOfItemsInCart)
                    ],
                  ),
                )
            ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Container(
                // color: Colors.green,
                child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ActionButton(iconPath: 'filter.png', title: 'Filter', onTap: () { 
                      _settingBottomSheetModal(context);
                    },),
                    Container(
                      width: 1,
                      height: 25,
                      color: Colors.black38,
                    ),
                    ActionButton(iconPath: 'filter.png', title: 'Sort', onTap: () { },),
                    Container(
                      width: 1,
                      height: 25,
                      color: Colors.black38,
                    ),
                    ActionButton(iconPath: 'filter.png', title: 'List', onTap: () { },),
                  ],              
                ),
              ),
            )
          
          ],
        ),
      ),
    );
  }

  void _settingBottomSheetModal(BuildContext context){
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius:   BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0)
           )
      ),
      context: context, builder: (BuildContext bc){
        return  FilterModalBottomSheet();
      });
  } 
}
