
import 'package:flutter/material.dart';
import 'package:vall_india/MVVM_Strutures/Quest_MVVM.dart';

class QestsProvider extends ChangeNotifier{
  List<Quests> _quest=[];
  List<Quests> get quest=>_quest;

  void addQuest(Quests quest) {
    _quest.add(quest);
    notifyListeners();
  }

  void removeQuest(Quests quest) {
    _quest.remove(quest);
    notifyListeners();
  }
  

}