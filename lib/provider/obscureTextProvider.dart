
import 'package:flutter/material.dart';

class obscureTextProvider extends ChangeNotifier{
  bool _obscuretext = true;   // Initially hide the password
  get obscuretext => _obscuretext;

  void setobscuretext(){
    _obscuretext = !_obscuretext;
    notifyListeners();
  }
}