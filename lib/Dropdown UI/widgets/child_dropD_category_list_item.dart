import 'package:flutter/material.dart';

import '../custom_drop_down.dart';
import '../data/db.dart';
import 'brand_list_item.dart';


class DrdCategoryChildListItem extends StatefulWidget {
  final String title;
  const DrdCategoryChildListItem({
    Key? key, required this.title,
  }) : super(key: key);

  @override
  State<DrdCategoryChildListItem> createState() => _DrdCategoryChildListItemState();
}

class _DrdCategoryChildListItemState extends State<DrdCategoryChildListItem> {
 bool isOpened = false;
  void dropDown(){
    setState(() {
      isOpened = ! isOpened;
    });
  }
  Icon changeIcon(){
    if(isOpened){
    return const Icon(Icons.arrow_drop_up, color: Colors.grey,);
    } 
      return const Icon(Icons.arrow_drop_down, color: Colors.grey,);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: dropDown,
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text(widget.title,
                 style: TextStyle(
                   fontWeight: isOpened? FontWeight.bold : null,
                   fontSize: 16),),
               changeIcon()
            ],),
          ),
        ),
        if(isOpened)
         Container(
        color: Colors.white,
        width: double.infinity,
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: DataBase.brands.map((e) => BrandsListItem(title: e.title,)).toList()
        ), 
      )
      ],
    );
  }
}