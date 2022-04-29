import 'package:flutter/material.dart';


class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(vertical: 15,),
      alignment: Alignment.centerLeft,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.075),
          offset:const  Offset(0.0, 1.0),
          blurRadius: 10.0
          )
    
        ]      ),
      child: TextFormField(
        scrollPadding:const EdgeInsets.symmetric(horizontal: 15),
        decoration: const InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search),
          hintText: 'Search unique furniture...',
          hintStyle: TextStyle(
            color: Colors.black26,
            fontSize: 14
          )
        ),
      ),
    
    );
      
  }
}