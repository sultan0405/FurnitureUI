import 'package:flutter/material.dart';

class ColorList extends StatefulWidget {
  final List<Color> colors;
  ColorList({Key? key, required this.colors}) : super(key: key);

  @override
  State<ColorList> createState() => _ColorListState();
}

class _ColorListState extends State<ColorList> {

  Color? selectedColor;
  void select(Color color){
    if (selectedColor == color) {
      selectedColor = null;
    } else{
      selectedColor = color;
    }
    setState(() { });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: 5.0,
          children: widget.colors.map((color) {
            return InkWell(
              onTap: (){
                select(color);
              },
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  border: selectedColor == color ? Border.all(width: 3, color: Theme.of(context).primaryColor) : null,
                color: color,
                shape : BoxShape.circle,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset.zero,
                    blurRadius: 15.0
                  )
                ]
                ),
                
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}