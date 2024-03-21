

import 'package:flutter/material.dart';

class CheckboxProvider extends ChangeNotifier{

  bool _isChecked = false;
  bool get isChecked => _isChecked;  // Getter for accessing the checkbox state


  void toggleCheckbox(){
    _isChecked = !_isChecked;
    print('_ischecked value is now $_isChecked');
    notifyListeners();   // Notify listeners to rebuild UI
  }
}