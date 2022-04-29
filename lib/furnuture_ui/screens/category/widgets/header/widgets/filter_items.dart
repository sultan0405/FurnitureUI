import 'package:flutter/material.dart';

class FilterItems extends StatefulWidget {
  FilterItems({Key? key}) : super(key: key);

  @override
  State<FilterItems> createState() => _FilterItemsState();
}

class _FilterItemsState extends State<FilterItems> {

 List<int> selectedItems = [];
  List<FilterItemModel> items = [
    FilterItemModel(id:1, icon: const Icon(Icons.discount), title: 'Discount'), 
    FilterItemModel(id:2, icon: const Icon(Icons.book), title: 'Dashboard'), 
    FilterItemModel(id:3, icon:const  Icon(Icons.filter), title: 'Filter'), 
  ];

  void toggleItem(int id){
    if (selectedItems.contains(id)) {
      selectedItems.remove(id);
    } else {
      selectedItems.add(id);
    }
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e)=> _FilterItem(onTap: (){
        toggleItem(e.id);
      }, icon: e.icon,  title: e.title, isSelected:selectedItems.contains(e.id),)).toList(),
    );
  }
}

class FilterItemModel{
  final Icon icon;
  bool isselected;
  final String title;
  final int id;

  FilterItemModel({
    required this.id,
   required this.icon,
    this.isselected = false,
   required this.title
  });
}

class _FilterItem extends StatelessWidget {
  final Function() onTap;
  final Icon icon;
  final String title;
  final bool isSelected;
  const _FilterItem({
    Key? key, required this.onTap, required this.icon, required this.isSelected, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration:const  BoxDecoration(
          border : Border(
            bottom : BorderSide(
              color: Colors.black12,
              width: 1
            )
          )
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:   [
           icon,
           const SizedBox(width: 5,),
            Expanded(child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                title,
                style:const TextStyle(fontSize: 16.0),
              ),
            )),
            if(isSelected)
          const  Icon(Icons.check)

          ]
        ),
      ),
    );
  }
}