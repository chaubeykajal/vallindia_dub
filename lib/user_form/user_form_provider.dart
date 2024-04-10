import 'package:flutter/material.dart';

class NGO {
  final String name;
  final String logoUrl;

  NGO({required this.name, required this.logoUrl});
}

class NGOProvider with ChangeNotifier {
  String? selectedNGO;

  List<NGO> ngoList = [
    NGO(name: 'NGO 1', logoUrl: 'assets/ngo1_logo.png'),
    NGO(name: 'NGO 2', logoUrl: 'assets/ngo2_logo.png'),
    NGO(name: 'NGO 3', logoUrl: 'assets/ngo3_logo.png'),
    NGO(name: 'NGO 4', logoUrl: 'assets/ngo3_logo.png'),
    NGO(name: 'NGO 5', logoUrl: 'assets/ngo3_logo.png'),
    NGO(name: 'NGO 6', logoUrl: 'assets/ngo3_logo.png'),
    NGO(name: 'NGO 7', logoUrl: 'assets/ngo3_logo.png'),
    NGO(name: 'NGO 8', logoUrl: 'assets/ngo3_logo.png'),
    NGO(name: 'NGO 9', logoUrl: 'assets/ngo3_logo.png'),

    // Add more NGOs as needed
  ];

  void selectNGO(String name) {
    selectedNGO = name;
    notifyListeners();
  }
}



// import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';
//
// class UserFormProvider with ChangeNotifier{
//
// }