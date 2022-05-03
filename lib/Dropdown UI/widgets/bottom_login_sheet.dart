import 'dart:ui';

import 'package:flutter/material.dart';

class BottomLoginSheet extends StatelessWidget {
  const BottomLoginSheet({Key? key}) : super(key: key);

  void _close(BuildContext context){
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        color: Colors.white,
        padding: const EdgeInsets.only(top:10, bottom: 50,left: 30, right: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                color: Colors.deepOrange,
                  shape: BoxShape.circle
                ),
                child: const Text(
                  'YES.',
                  style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500, letterSpacing: -1.2),
                )
              ),
              GestureDetector(
                onTap: (){ _close(context);},
                child: Container(
                  child: Icon(Icons.close)
                ),
              )
    
              ]
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: _BootmSheetLogin(),
            )
          ],
        ),
      ),
    );
  }
}

class _BootmSheetLogin extends StatefulWidget {
  const _BootmSheetLogin({Key? key}) : super(key: key);

  @override
  State<_BootmSheetLogin> createState() => _BootmSheetLoginState();
}

class _BootmSheetLoginState extends State<_BootmSheetLogin> {
  bool _isTapped = false;

  void _onTap(){
     setState(()  {
      _isTapped = !_isTapped;
      _changeBg();
    });
  }

  Future<void> _changeBg()async{
      await Future.delayed(const Duration(milliseconds: 300));
      setState(() {
      _isTapped = false;
        
      });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:  [
                        Text('Login', style: LoginStyleUtils().blueTextBold,),
                          Padding(
                          padding: const EdgeInsets.symmetric(horizontal:8.0),
                          child: Text('or', style: LoginStyleUtils().orText),
                        ),
                        Text('Signup', style: LoginStyleUtils().blueTextBold,),
                      ],
                    ),
                  ),
                   Container(
                     padding: const EdgeInsets.symmetric(vertical: 15),
                    width: double.infinity,
                    height: 70,
                    child: TextField(
                      keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          label: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children:  [
                                 Text('Mobile Number', style: LoginStyleUtils().labelText),
                                Positioned(
                                  top: 0,
                                  right:-8,
                                  child: Text('*', style: LoginStyleUtils().pinkText)),
                              ],
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black38)),
                          contentPadding: const EdgeInsets.symmetric(vertical: 5),
                          prefixIcon: Container(
                            width: 50,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:  [
                                    const Text('+993', style: TextStyle(color: Colors.black54),), 
                                    SizedBox(width: 5,), 
                                    Container(width: 1, height: 15, color: Colors.black26,)],),
                            )),
                            enabledBorder:const OutlineInputBorder(borderSide: BorderSide(color: Colors.black12)) ,
                        ),
                    ),
                    ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:10.0),
                    child: Row(
                      children:  [
                        const Text(
                          'By continuing, I agree to the',
                        ),
                        Text(
                          ' Terms of Use',
                          style: LoginStyleUtils().pinkTextBold,
                        ),
                        const Text(
                          ' &',
                        ),
                        Text(
                          ' Privacy Piolicy',
                          style: LoginStyleUtils().pinkTextBold,
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: _onTap,
                    child: Container(
                      margin: const EdgeInsets.only(top:20),
                      decoration: BoxDecoration(
                      color: _isTapped?  Color.fromARGB(255, 247, 133, 171) :Colors.pinkAccent,

                        borderRadius: BorderRadius.circular(3)
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      alignment: Alignment.center,
                      child:  Text('CONTINUE' ,style: LoginStyleUtils().btnText),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 35),
                     padding:  const EdgeInsets.only(top:8.0),
                    child: Row(
                      children:  [
                        const Text('Having trouble logging in?'),
                        Text(' Get help', style: LoginStyleUtils().pinkText,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]
        ),
      );
  }
}

class LoginStyleUtils{
   TextStyle pinkTextBold = const TextStyle(color: Colors.pinkAccent, fontWeight: FontWeight.bold);
   TextStyle blueTextBold = const TextStyle( color: Color.fromARGB(255, 6, 14, 61), fontSize: 20, fontWeight: FontWeight.bold);
   TextStyle pinkText = const TextStyle(color: Colors.pinkAccent,);
   TextStyle labelText = const TextStyle(letterSpacing: .15,fontSize: 13, color: Colors.black45);
   TextStyle btnText = const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500);
   TextStyle orText = const TextStyle(fontSize: 14,  color: Color.fromARGB(255, 6, 14, 61),);
}