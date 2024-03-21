
import 'package:flutter/material.dart';

class Themechanger extends ChangeNotifier{

  ThemeMode _thememode = ThemeMode.light;
  ThemeMode get thememode => _thememode;


  void setTheme(ThemeMode Thememode)async{
    _thememode = Thememode;
    notifyListeners();
  }
}