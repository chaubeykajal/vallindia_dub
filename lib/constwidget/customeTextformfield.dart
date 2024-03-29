

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:vall_india/const%20variable/themecolor.dart';

class CustomTextFormField extends StatelessWidget{
  // final double height;
  // final double width;
  final TextEditingController controller;
  // final String? labelText;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  
  // final ValueChanged<String>? onChanged;
  final FormFieldValidator<String> validator;

  const CustomTextFormField({
  //  required Key key,
  //  required this.labelText, 
   required this.controller, 
   required this.hintText, 
   required this.prefixIcon, 
   required this.suffixIcon, 
   required this.obscureText, 
  //  required this.keyboardType, 
  //  required this.onChanged, 
   required this.validator, 
  //  required this.height, 
  //  required this.width,


  });
  @override
  Widget build(Object context) {
    return 
    // Container(
    //   decoration: BoxDecoration(
    //     border:Border.all(
    //       width:1.0,
    //       color: Color.fromARGB(255, 244, 229, 229),) ,
    //     borderRadius:BorderRadius.circular(8),
    //      ),
      
      // height:50,
      // width: width,
      // child: 
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