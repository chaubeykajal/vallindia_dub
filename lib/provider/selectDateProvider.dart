import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SelectDateProvider extends ChangeNotifier {
  DateTime? _selectedDate;
  TextEditingController _dateController = TextEditingController();
  bool? _isminor;


  get dateController => _dateController;
  get isminor => _isminor;

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      _selectedDate = picked;
      String _formattedDate = DateFormat('yyyy-MM-dd').format(picked);
      _dateController.text = _formattedDate;

    int? age =calculateAge();
    _isminor = age!=null && age<18;
    print('isminor: $isminor');
    calculateAge();

    notifyListeners();
    }
  }

   calculateAge() {
    if (_selectedDate == null) return null;

    DateTime now = DateTime.now();
    int age = now.year - _selectedDate!.year;
    if (now.month < _selectedDate!.month || (now.month == _selectedDate!.month && now.day < _selectedDate!.day)) {
      age--;
      print('myage:$age');
      
    }
    if (age<18){
      _isminor=true;
    }
    else{_isminor =false;}
     print('myage:$age');
    print('provider : $_isminor');
    notifyListeners();
  }

  
}
