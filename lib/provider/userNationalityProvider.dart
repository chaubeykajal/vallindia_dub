

import 'package:flutter/material.dart';


enum Nationality {Indian, NonIndian,}

class UserNationalityProvider extends ChangeNotifier{
  Nationality _nationality  = Nationality.Indian;
  Nationality get nationality => _nationality;

  void setresult(Nationality newNationality){
    _nationality= newNationality;
    notifyListeners();


  }

}