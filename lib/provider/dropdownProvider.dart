

import 'package:flutter/material.dart';

class dropDownWidget extends ChangeNotifier{
  

  List<String> identities = ["she her", "he him"];

  String _dropDownValue = "she,her";
  get dropDownValue => _dropDownValue;

  void setdropDownValue(String newValue){
    _dropDownValue = newValue;
    notifyListeners();
  }


}