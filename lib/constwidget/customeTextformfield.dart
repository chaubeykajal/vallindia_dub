

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vall_india/const%20variable/themecolor.dart';

class CustomTextFormField extends StatelessWidget{
  final double height;
  final double width;
  final TextEditingController controller;
  final String? labelText;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  
  // final ValueChanged<String>? onChanged;
  final FormFieldValidator<String> validator;

  const CustomTextFormField({
  //  required Key key,
   required this.labelText, 
   required this.controller, 
   required this.hintText, 
   required this.prefixIcon, 
   required this.suffixIcon, 
   required this.obscureText, 
  //  required this.keyboardType, 
  //  required this.onChanged, 
   required this.validator, 
   required this.height, 
   required this.width,


  });
  @override
  Widget build(Object context) {
    return Container(
      decoration: BoxDecoration(
        // border: Border.all(width: ),
        // borderRadius: BorderRadius.all(Radius.circular(30))
      ),
      height: height,
      width: width,
      child: TextFormField(
        controller: controller,
        style:TextStyle(color: color2),
        decoration: InputDecoration(
          border: OutlineInputBorder( borderSide:BorderSide(
            color: color2, // You can change the color as well
            width: 6.0,) ),
          labelText:labelText,
          hintText: hintText,
          hintStyle:TextStyle(color: color1) ,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon, 
        ),
        
        obscureText: obscureText,
        validator: validator,
      ),
      
    );
    
    
  }
  

}