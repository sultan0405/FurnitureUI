import 'package:flutter/material.dart';

class Section extends StatefulWidget {
  const Section({Key? key, required this.title, required this.children}) : super(key: key);
  final String title;
  final List<Widget> children;
  @override
  State<Section> createState() => _SectionState();

  toList() {}
}

class _SectionState extends State<Section> {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28,),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.title,
                style: const TextStyle( fontSize: 20.0, height: 1),
                ),
                InkWell(
                  // onTap: ,
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text('View all',
                        style: TextStyle(fontSize: 18.0, 
                          height: 1, 
                          color: Theme.of(context).primaryColor,
                      )
                      ),
                       Padding(
                         padding: const EdgeInsets.only(left:10.0),
                         child: Icon(Icons.arrow_right_alt_sharp, 
                          color: Theme.of(context).primaryColor,),
                       )
                    ],
                  ),
                )
              ],
            ),
          )
          ,
          Container(
            child:  SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                children: widget.children),
              ),
          )
        ],
      ),
    );
  }
  }