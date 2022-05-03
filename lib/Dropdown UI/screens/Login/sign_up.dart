import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginSignUp extends StatelessWidget {
  const LoginSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white, title: IconButton(onPressed: (){
          if(Navigator.canPop(context)){
            Navigator.pop(context);
          }
        }, icon: const Icon(Icons.arrow_back, color: Colors.black38,),),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
          Expanded(
            flex: 3,
            child: Container(
              height: 300,
              alignment: Alignment.centerLeft,
              width: double.infinity,
              child: Image.asset('login.png')
              ),
          ),
            Expanded(
              flex: 4,
              child: Container(
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
                     Expanded(
                       child: Container(
                         padding: const EdgeInsets.symmetric(vertical: 13),
                        width: double.infinity,
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
                      onTap: () => print("tapped"),
                      child: Container(
                        margin: const EdgeInsets.only(top:20),
                        color: Colors.pinkAccent,
                        padding: const EdgeInsets.symmetric(vertical: 7),
                        alignment: Alignment.center,
                        child:  Text('CONTINUE' ,style: LoginStyleUtils().btnText),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
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
            ),
          const  Spacer(flex: 2,)
          ]
        ),
      ),
    );   
  }
}

class LoginStyleUtils{
   TextStyle pinkTextBold = const TextStyle(color: Colors.pinkAccent, fontWeight: FontWeight.bold);
   TextStyle blueTextBold = const TextStyle( color: Color.fromARGB(255, 6, 14, 61), fontSize: 20, fontWeight: FontWeight.bold);
   TextStyle pinkText = const TextStyle(color: Colors.pinkAccent,);
   TextStyle labelText = const TextStyle(letterSpacing: .15,fontSize: 13, color: Colors.black45);
   TextStyle btnText = const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold);
   TextStyle orText = const TextStyle(fontSize: 14,  color: Color.fromARGB(255, 6, 14, 61),);
}