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
        child: const Padding(
          padding:  EdgeInsets.only(top:60.0,left:22),
          child: Text("Hello\nSign in!",style:TextStyle(
            fontSize: 30,
            color: Colors.white,fontWeight: FontWeight.bold,
        
          )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 200.0,),
        child: Container(
          decoration: const BoxDecoration(
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
                const TextField(
                  decoration: InputDecoration(
                    suffixIcon:Icon(Icons.check,color:Colors.grey),
                    label: Text('Gmail', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:Color(0xffBB1736),
                    ))
                  ),
                ),
         const  TextField(
                  decoration: InputDecoration(
                    suffixIcon:Icon(Icons.visibility_off,color:Colors.grey),
                    label: Text('Password', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:Color(0xffBB1736),
                    ))
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text("Forgot Password?",style: TextStyle(
                    fontWeight: FontWeight.bold,color:Color(0xffBB1736)
,                    )),
                ),
                SizedBox(height: 70),
            Container(
        height: 50,
        width: 300,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),

          gradient: LinearGradient(colors: [
            Color(0xffB81736),
            Color(0xff2B1836),
          ])
        ),
        child: Center(
          child:
          Text("SIGN IN",style:TextStyle(fontWeight: FontWeight.bold,
          fontSize:20,
          color: Colors.white)),
        ),
            ),
            SizedBox(height: 150),
               Align(
                  alignment: Alignment.bottomRight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                       
                       Text("Dont have an Account?",style:TextStyle(fontWeight: FontWeight.bold,
          
          color: Colors.grey)
                       
          ),
          Text("Sign Up",style:TextStyle(fontWeight: FontWeight.bold,
          fontSize:17,
          color: Colors.black)
                       
          ),
                    ],),
                ),  
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