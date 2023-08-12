import 'package:flutter/material.dart';
import 'loginScreen.dart';
import 'regScreen.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xffB81736),
            Color(0xff2B1836),
          ])
        ),
        child: Column(children: [
          const Padding(
            padding:  EdgeInsets.only(top:150.0),
            child: Image(image: AssetImage('assets/logo.png'),),
          ),
         const  SizedBox(
            height: 100,
          ),
          const Text("Welcome Back",style:TextStyle(
            fontSize:30,
            color: Colors.white,
          )),
          const SizedBox(height: 30),
          GestureDetector(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder:(context)=> loginScreen()));
            } ,
            child: Container(
              height: 50,width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white)
              ),
              child: const Center(
                child:Text("SIGN IN",style:TextStyle(
              fontSize:20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
              ),
            ),
          ),
          const SizedBox(height: 30),
          GestureDetector(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder:(context)=> regScreen()));
            } ,
            child: Container(
              height: 53,width: 320,
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.white)
              ),
              child: const Center(
                child:Text("SIGN UP",style:TextStyle(
              fontSize:20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )),
              ),
            ),
          ),
         const  Spacer(),
const Text("Login with Social Media",style:TextStyle(
            fontSize:17,
            color: Colors.white,
          )),
          const  SizedBox(
            height: 12,
          ),
          Image(image: AssetImage('assets/social.png'),)          
        ],)
      )

    );
  }
}