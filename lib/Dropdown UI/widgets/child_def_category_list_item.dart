import 'package:flutter/cupertino.dart';

class DefCategoryChildListItem extends StatelessWidget {
  final String title;
  const DefCategoryChildListItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
            padding: const EdgeInsets.only(top:10, left:16, right:10),
            alignment: Alignment.centerLeft,
            child:  Text(title, style:const TextStyle(fontSize: 16),),
          );
  }
}