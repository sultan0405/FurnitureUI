import 'package:flutter/material.dart';



class ActionButton extends StatelessWidget {
  final String title;
  final String iconPath;
  final Function() onTap;
  const ActionButton({
    Key? key, required this.title, required this.iconPath, required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
             height:30,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Container(
             alignment: Alignment.center,
             child: Image.asset('filter.png', fit: BoxFit.cover,)),
           const  SizedBox(width: 5,),
            Container(
              height: MediaQuery.of(context).size.height,
              child: Stack(
              clipBehavior: Clip.none,
                children: [
                  Text(
                    title, 
                  style: const TextStyle(fontSize: 18, height: 1.5),),
                  Positioned(
                    top: 3,
                    right:-10,
                    child: Container(
                      width: 13,
                      height: 13,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(13)
                      ),
                      child: const Icon(Icons.check, color: Colors.white, size: 10,),
                    ) )
    
                ],
              ))
          ],
        ),
      ),
    );
  }
}