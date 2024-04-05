

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:vallindia_dub/const%20variable/themecolor.dart';

class CustomTextFormField extends StatelessWidget{

  final TextEditingController controller;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final FormFieldValidator<String> validator;

  const CustomTextFormField({

   required this.controller, 
   required this.hintText, 
   required this.prefixIcon, 
   required this.suffixIcon, 
   required this.obscureText, 
   required this.validator, required ontap, required bool readonly, required TextInputType keyboardType, 


  });
  @override
  Widget build(Object context) {
    return 
    
      TextFormField(
        controller: controller,
        style:TextStyle(color: color2),
        
        decoration: InputDecoration(
          constraints: const BoxConstraints( minHeight:30),
          // // isDense: true,
          contentPadding: EdgeInsets.symmetric(vertical:5,horizontal:10),
          border: OutlineInputBorder( 
            borderRadius: BorderRadius.circular(8),
            borderSide:const BorderSide(
            color: Color.fromARGB(255, 124, 122, 122), // You can change the color as well
            width: 1.0,) ),
          labelText:hintText,
          labelStyle: TextStyle(color: color1),
          hintText: hintText,
          hintStyle:TextStyle(color:Color.fromARGB(255, 188, 188, 184)) ,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon, 
          
          
        ),
        // autovalidateMode: AutovalidateMode.disabled, // Add this line
        obscureText: obscureText,
        validator: validator,
      //  ),
      
    );
    
    
  }
  

}