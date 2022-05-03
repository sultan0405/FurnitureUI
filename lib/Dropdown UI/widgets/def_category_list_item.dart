import 'package:flutter/material.dart';




class DefCategoryListItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imgPath;
  final String bgPath;

  const DefCategoryListItem({Key? key, required this.title, required this.subtitle, required this.imgPath, required this.bgPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 3),
      child: Container(
              height: 150,
              padding: const EdgeInsets.only(top:10, left: 10, right: 10),
              width: double.infinity,
              alignment: Alignment.center,
              decoration:  BoxDecoration(
              // color: Colors.green,
                image: DecorationImage(
                  image: AssetImage(bgPath
                  ),
                  fit: BoxFit.cover
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child:  Text(
                            // 'SPRING\nSUMMER 2022',
                            title,
                            // 'WOMEN',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), 
                              ),
                          ),
                        Container(
                          // color: Colors.green,
                          child:  Text(
                          // 'New Styles Getting Added Daily',
                          subtitle,
                          style: TextStyle(fontSize: 13,),
                            ),
                        ),
                        ],
                      ),
                    ),
                  Container(
                    child: Image.asset(imgPath, fit: BoxFit.cover)),
                ],
              ),
            ),
    );
  }
}