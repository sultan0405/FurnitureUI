import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ui_learn/furnuture_ui/models/item.dart';

class FurnitureGridItem extends StatelessWidget {
  final Item item;
  const FurnitureGridItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              offset: Offset.zero,
              blurRadius: 15.0
            ),
          ],
          
        ),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment.bottomCenter,
                        image: AssetImage(item.imagePAth))
                    ),
                  ),
                  if(item.discountPercent != null)
                  Positioned(
                    top: 16,
                    right: 16,
                    child: Container(
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Theme.of(context).primaryColor),
                    child: Text(' ${ item.discountPercent}%', 
                    style: const TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,),
                    ))
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.name, 
                  style: const TextStyle(
                    fontSize: 13,
                    height: 1.5,
                    color: Colors.black
                  ),
                  ),
                  Wrap(
                    spacing: 3.0,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        Item.format(item.price),
                        style: TextStyle(fontSize: 30, color: Theme.of(context).primaryColor, height: 1.5),
                      ),
                      if(item.discountPercent != null)
                      Text(
                        Item.format(item.originalPrice),
                        style: const TextStyle(
                          fontSize: 12,
                          height: 1.5,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.black38
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                      Expanded(
                        child: Container(
                          child: RatingBar.builder(
                                    initialRating: item.rating,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    ignoreGestures: true,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 12,
                                    itemBuilder: (context, _) => const  Icon(
                                      Icons.star,
                                      size: 2,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                        ),
                      ),
                              const SizedBox(width: 5,),
                              Text("${item.rating}",
                              style: TextStyle(fontSize: 10.0),
                              )
                    ]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}