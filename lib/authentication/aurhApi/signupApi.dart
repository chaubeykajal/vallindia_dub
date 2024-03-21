

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';



final _googleSignIn = GoogleSignIn(
  clientId: '545613343328-ddjoq42lnf69lcu9kpgea8inbmfvs0f3.apps.googleusercontent.com',
);
 GoogleSignIn({required String clientId})async{
  try{
  final  _googleuser = await _googleSignIn().signIn();
  if (_googleuser != null){
    print("Signed in as: ${_googleuser}");
    print("Signed in as: ${_googleuser.displayName}");
    print("image link: ${_googleuser.photoUrl}");
    print("Email-id: ${_googleuser.email}");
    print("Authentication id: ${_googleuser.serverAuthCode}");
    print("${_googleuser.id}");

    
   
  }
  else{
    print("Signin-canceled");
  }
  

  }catch(e){
    print('your error: $e');
  }



}