

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:vallindia_dub/main.dart';

class AuthProvider extends ChangeNotifier{

  GoogleSignIn _googleSignIn = GoogleSignIn(clientId:'');
  
  

  Future<void> signIn() async{
    try{
    final _googleuser= _googleSignIn.signIn();
      
    if (_googleuser != null){
  
      Navigator.of(context as BuildContext).pushReplacement(
        MaterialPageRoute(builder: (context) => MyHomePage(title: '',)),
      );
    }
    }
    catch (error){
      print('Sign-in failed: $error');
    }

    


  }
}