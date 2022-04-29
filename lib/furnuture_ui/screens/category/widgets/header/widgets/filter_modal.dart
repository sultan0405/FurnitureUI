import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_learn/furnuture_ui/screens/category/widgets/header/widgets/color_list.dart';

import 'filter_items.dart';



class FilterModalBottomSheet extends StatelessWidget {
   FilterModalBottomSheet({Key? key}) : super(key: key);


  void _close(context){
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    }
  }



  @override
  Widget build(BuildContext context) {
  var inputWidth = MediaQuery.of(context).size.width;
    return  SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    alignment: Alignment.centerLeft,
                    child: IconButton(onPressed: (){
                      _close(context);
                    }, icon: const Icon(Icons.close),
                    ),
                  ),
                  const Padding(
                    padding:  EdgeInsets.symmetric(vertical: 10),
                    child:  Text(
                      'Filter',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                InkWell(
                  onTap: ()=> print('object'),
                  child: Container(
                    width: 100,
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Reset',
                      style: TextStyle(color:Theme.of(context).primaryColor, fontSize: 16)
                    ),
                  ),
                )
                ],
              ),
            ),
            const Text(
              'Price Range',
              style: TextStyle(fontSize: 20.0,),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top:10),
              // color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: ((inputWidth/2)-55),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all( width: 1, color: Colors.black12)
                    ),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        hintText: 'Minimum',
                        border: InputBorder.none
                      )
                    )
                  ),
                  
                  Container(
                    width: 10,
                    height: 1,
                    color: Colors.black12
                  ),
                  Container(
                    width: ((inputWidth/2)-55),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all( width: 1, color: Colors.black12)
                    ),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        hintText: 'Maximum',
                        border: InputBorder.none
                      )
                    )
                  ),
                ],
              ),
            ),

            // * filter Items
          const  Padding(
              padding:  EdgeInsets.only(top: 5),
              child:  Text(
                'Item Filter',
                style: TextStyle(fontSize: 20.0,),
              ),
            ),

            Container(
              padding: const EdgeInsets.only(top: 15),
              child: FilterItems(),
            ),

              const  Padding(
              padding:  EdgeInsets.only(top: 5),
              child:  Text(
                'Item Color',
                style: TextStyle(fontSize: 20.0,),
              ),
            ),

            ColorList(colors:const [Colors.blue, Colors.white, Colors.red, Colors.cyan]),

            InkWell(
              onTap: (){
                _close(context);
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 12),
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(7.0),
                color: Theme.of(context).primaryColor,

                ),
                child: const Text('Apply Filter', style: TextStyle(fontSize: 17, color: Colors.white),),
              ),
            )
          ],
        ) ,
      ),
    );
  }
}