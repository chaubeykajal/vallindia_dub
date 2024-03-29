
import 'package:flutter/material.dart';
import 'package:vall_india/const%20variable/themecolor.dart';

class subtitlewidget extends StatelessWidget {
  final String subtitle;
  const subtitlewidget({
    super.key,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:15.0,right:15.0),
      child: Text(
        subtitle,                                                              //  "We have sent a code on your registered mail",
        textAlign: TextAlign.center,
        style:TextStyle(color:color1,fontSize:15)),
    );
  }
}