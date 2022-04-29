import 'package:flutter/material.dart';


class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key, required this.title, required this.iconPath, required this.onTap}) : super(key: key);
  final String title;
  final String iconPath;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      focusColor: Colors.transparent,
      onHover: (val)=> val=false,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15 ),
        child: Container(
          margin: const EdgeInsets.only(right: 15),
          width: 130,
          height: 90,
          decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              offset: Offset.zero,
              blurRadius: 15.0
            )
          ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 42,
                width: 42,
                child: Image.asset(iconPath, color: Theme.of(context).primaryColor,)),
                SizedBox(height: 4,),
              Text(title,
              style: TextStyle(fontSize: 16.0, height: 1.5),
              )
            ],
          ) ),
      ),
    );
  }
}