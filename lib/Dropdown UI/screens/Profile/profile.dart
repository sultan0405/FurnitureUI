import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Profile',
          style: TextStyle( fontSize: 17, color: Colors.black26, fontWeight: FontWeight.bold),
          ),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(children: [
            Stack(
              alignment: Alignment.center
              
              ,
              children:[
                Container(
        // width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        color: Colors.black54,
                        height:100,
                      ),
                      Container(
                        color: Colors.white,
                        height:100,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
                    // color: Colors.green,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                       borderRadius: BorderRadius.circular(3),
                                     ),
                            child: Icon(Icons.person, size: 40,),
                          ),
                         const SizedBox(width: 15,),
                           Expanded(
                             child: GestureDetector(
                                  onTap: (){
                                    _showLoginBottomSheet(context);
                                  
                                  },
                                   child: Container(
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(2),
                                  color: Colors.pinkAccent,
                                     ),
                                  padding: const EdgeInsets.symmetric(vertical: 7),
                                  alignment: Alignment.center,
                                  child:  const Text('LOG IN/SIGN UP' ,style:  TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500)),
                                                   ),
                                                 ),
                           ),
                        ],
                      ),
                      ),
                )
              ]
            )
          ]),
        ),
      ),
    );
  }

  void _showLoginBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context, builder: (context){
          return const BottomLoginSheet();
        });
  }
}