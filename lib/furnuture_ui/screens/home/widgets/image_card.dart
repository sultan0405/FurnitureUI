import 'package:flutter/material.dart';


class ImageCard extends StatelessWidget {
  final String imgPath;
  const ImageCard({Key? key, required this.imgPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Container(
        width: 270,
        height: 180,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.05),
                offset: Offset.zero,
                blurRadius: 15.0
              )
            ],
            image: DecorationImage(
              image: AssetImage(imgPath),
              fit: BoxFit.cover
            )
        ),
      ),
    );
  }
}