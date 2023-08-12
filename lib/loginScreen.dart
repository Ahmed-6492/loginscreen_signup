import 'package:flutter/material.dart';
class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Stack(
        children: [
          Container(
        height: double.infinity,
        width: double.infinity,
        decoration:const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xffB81736),
            Color(0xff2B1836),
          ])
        ),
        child: Padding(
          padding: const EdgeInsets.only(top:60.0,left:22),
          child: Text("Hello\nSign in!",style:TextStyle(
            fontSize: 30,
            color: Colors.white,fontWeight: FontWeight.bold,
        
          )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 200.0,),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight:Radius.circular(40) ,
              
            ),
            color: Colors.white,
          ),
          height:double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left:18.0,right:18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    suffixIcon:Icon(Icons.check,color:Colors.grey),
                    label: Text('Gmail', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:Color(0xffBB1736),
                    ))
                  ),
                ),
          TextField(
                  decoration: InputDecoration(
                    suffixIcon:Icon(Icons.visibility_off,color:Colors.grey),
                    label: Text('Password', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:Color(0xffBB1736),
                    ))
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text("Forgot Password?",style: TextStyle(
                      fontWeight: FontWeight.bold,color:Color(0xffBB1736)
,                    )),
                  ),
                )
              ],
            ),
          ),
        ),
      )
        ],
      )
    );
  }
}