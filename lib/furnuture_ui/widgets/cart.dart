import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key, required this.numberOfItemsInCart}) : super(key: key);

  final int numberOfItemsInCart;

  @override
  Widget build(BuildContext context) {
    return Stack(
      // overflow: Overflow.visible
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 30.0,
          width: 30.0,
          child: Image.asset('basket.png'),
          ),
          if(numberOfItemsInCart>0)
          Positioned(
            top: -5,
            right: -4,
            child: Container(
              width: 15,
              height:15,
              alignment: Alignment.center,
              decoration:  BoxDecoration(
                color: Theme.of(context).primaryColor,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 1.0)
                ),
              child: Text('$numberOfItemsInCart', 
              style: const TextStyle(
                color: Colors.white,
                fontSize: 8),),
            ) 
            )
      ],
    );
  }
}