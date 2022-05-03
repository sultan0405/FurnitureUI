import 'package:flutter/material.dart';

class BrandsListItem extends StatelessWidget {
  final String title;
  const BrandsListItem({
    Key? key, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(title),
    );
  }
}