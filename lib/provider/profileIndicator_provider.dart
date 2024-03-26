

import 'package:flutter/material.dart';

class ProfileIndicatorProvider extends ChangeNotifier{

  // it will show  the percentage of your complete profile
  double _completeProfileValue = 0.4;   // value between 0 to 1 
  get completeProfileValue => _completeProfileValue;


  void set(newvalue){
       _completeProfileValue =newvalue;
       notifyListeners();
  }
}