
 import 'package:flutter/material.dart';
import 'package:vall_india/const%20variable/themecolor.dart';

GestureDetector previousScreenButton(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pop(context);
      },
      child: Row(
        children: [
          Icon(Icons.arrow_back,size:18,color:color1,),
          Text('Back',style:TextStyle(color:color1,fontSize:15)),
    ],),
    );
  }