

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:vall_india/authentication/authScreens/sign_in.dart';

class splashScreen extends StatefulWidget{
  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:2), (){
      Navigator.pushReplacement(
        context, MaterialPageRoute(
          builder: (context){
             return signin_page();
          }));
     });
  }

  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
       
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset('assets/SplashScreen.png',fit:BoxFit.fill)),
      ));
  }
}