

import 'package:flutter/material.dart';

class CheckboxProvider extends ChangeNotifier{

  bool _isChecked_1 = false;
  bool get isChecked_1 => _isChecked_1;   // Getter for accessing the checkbox state

  bool _isChecked_2 = false;
  bool get isChecked_2 => _isChecked_2;


  void toggleCheckbox_Term(){
    _isChecked_1 = !_isChecked_1;
    notifyListeners();   // Notify listeners to rebuild UI
  }

  void toggleCheckbox_Privacy(){
    _isChecked_2 = !_isChecked_2;
    notifyListeners();   // Notify listeners to rebuild UI
  }
}
