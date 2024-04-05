



import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:vallindia_dub/screens/homeScreen.dart';



// google signin function

class  AuthProvider extends ChangeNotifier{

  GoogleSignInAccount? _user;
  GoogleSignInAccount? googleAccount;
  get user => _user;

  void setUser(){
       _user = googleAccount;
       notifyListeners();
  }



  Future<bool?> handleSignIn(googleSignIn ,BuildContext context) async {
  try {
    if ( Platform.isAndroid||kIsWeb) {
      // Use default GoogleSignIn instance for Web and Android
      final GoogleSignInAccount? googleAccount = await googleSignIn.signIn();
      if (googleAccount != null) {
        // Handle successful sign-in
        print('signindetail: ${googleAccount.email}');
        _user= googleAccount;
        print('user name: ${_user!.displayName}');
        // navigate to another screen
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Successfully login!')));
        Navigator.pushReplacement(context , MaterialPageRoute(builder: (context) { return MyHomePage(title: '');}));

        return true;
      } else {
        // Handle sign-in cancellation
        print('Sign-in canceled');
        return false;
      }
    }} catch (error) {
    print('Error signing in: $error');
    return false;
  }
}

// google signout functions
Future<void> handleSignOut(googleSignIn) async {
  try {
    await googleSignIn.signOut();
    print('Signed out');
  } catch (error) {
    print('Error signing out: $error');
  }
}




}
















    // else if (Platform.isIOS || Platform.isMacOS) {
    //   // Use GoogleSignIn with clientId for iOS and macOS
    //   final GoogleSignIn googleSignIn = GoogleSignIn(
    //     clientId: "YOUR_CLIENT_ID.apps.googleusercontent.com",
    //     scopes: ['email'],
    //   );
    //   final GoogleSignInAccount? googleAccount = await googleSignIn.signIn();
    //   if (googleAccount != null) {
    //     // Handle successful sign-in
    //     print('Signed in: ${googleAccount.displayName}');
    //   } else {
    //     // Handle sign-in cancellation
    //     print('Sign-in canceled');
    //   }
    // }
  