import 'package:flutter/material.dart';

import '../data/db.dart';




class DropDCategoryListItem extends StatefulWidget {
  final String title;
  final String subtitle;
  final String imgPath;
  final String bgPath;

  const DropDCategoryListItem({
    Key? key, required this.title, required this.subtitle, required this.imgPath, required this.bgPath,
  }) : super(key: key);

  @override
  State<DropDCategoryListItem> createState() => _DropDCategoryListItemState();
}

class _DropDCategoryListItemState extends State<DropDCategoryListItem> {

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
          onTap:dropDown ,
          child: Padding(
      padding: const EdgeInsets.only(bottom: 3),
            child: Container(
              height: 150,
              padding: const EdgeInsets.only(top:10, left: 10, right: 10),
              width: double.infinity,
              alignment: Alignment.center,
              decoration:  BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.bgPath,
                  ),
                  fit: BoxFit.cover
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:    [
                              Text(
                                widget.title,
                              // 'SPRING\nSUMMER 2022',
                              // 'WOMEN',
                              style:const  TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20), 
                                ),
                              changeIcon()
                            ],
                            ),
                          ),
                        Container(
                          // color: Colors.green,
                          child:  Text(
                          // 'New Styles Getting Added Daily',
                          widget.subtitle,
                          style: TextStyle(fontSize: 13,),
                            ),
                        ),
                        ],
                      ),
                    ),
                  Container(
                    child: Image.asset(widget.imgPath, fit: BoxFit.cover)),
                ],
              ),
            ),
          ),
        ),
        if(isOpened)
        Container(
          color: Colors.white,
          width: double.infinity,
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Column(
            children: DataBase.childItems.map((e) => e.isDropDown ? e.dropDWidget : e.defWidget ).toList()
          ), 
        )
      ],
    );
  }
}