import 'package:flutter/material.dart';


class PromoCard extends StatelessWidget {
  final String bgImgPath;
  final String title;
  final String subtitle;
  String? imgPath;
  String? caption;
  String? tag;
   PromoCard({Key? key, 
   required this.bgImgPath, 
   required this.title, 
   required this.subtitle,
   this.tag,
   this.caption,
   this.imgPath
   }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      margin: const EdgeInsets.only(top: 15,right: 10, bottom: 15),
      width: 300,
      height: 200,
      decoration:  BoxDecoration(
          image: DecorationImage(
            image: AssetImage(bgImgPath),
            fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              offset: Offset.zero,
              blurRadius: 10.0
            )  
          ],
        ),
        child: Stack(children: [
          if(imgPath!=null)
          Positioned(
            right: 0,
            bottom: 5,
            child: Image.asset(imgPath!, height:120),),
          Wrap(
            direction: Axis.vertical,
            children: [
          Text(title,
            style: const TextStyle(
              fontSize: 20, color:Colors.white, height: 1.5 ),
          ),
          Text(subtitle,
            style: const TextStyle(
              fontSize: 20, color:Colors.white, height: 1.5 ),
          ),
            ],
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: tag !=null? Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(177, 173, 173,0.3),
                borderRadius: BorderRadius.circular(5)
              ),
              child: Text(tag!,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 14.0,
                height: 1.5
                ) 
              )
              ) : Text(caption!, 
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                height: 1.5
                ),)  
              )
        ],
        )
    );
  }
}