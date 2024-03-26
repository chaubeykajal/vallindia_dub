
import 'package:flutter/material.dart';
import 'package:vall_india/const%20variable/themecolor.dart';


class CheckboxWidget extends StatelessWidget {

  final String String1;
  final String String2;
  final bool value;
  final Function(bool?)? onChanged;

  const CheckboxWidget({
    
    required this.String1, 
    required this.String2, 
    required this.value, 
    required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value:value, 
          onChanged:onChanged,),
        
        // InkWell(
        //   onTap: (){},
        //   child: 
        Text(String1, style:TextStyle(color:color2,fontSize:15)),
        // ),
        // InkWell(
        //   onTap: (){},
        //   child: 
        Text(String2, style:TextStyle(color:color3,fontSize:15))
        // ),
      ],
    );
  }
}
