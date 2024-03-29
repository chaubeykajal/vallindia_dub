

import 'package:flutter/material.dart';
import 'package:vall_india/const%20variable/themecolor.dart';
import 'package:vall_india/constwidget/elevatedButtonWidget.dart';

class minorAuthPage_1 extends StatefulWidget{
  @override
  State<minorAuthPage_1> createState() => _minorAuthPage_1State();
}

class _minorAuthPage_1State extends State<minorAuthPage_1> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    
    return SafeArea(
      child:Scaffold(
          backgroundColor:color4,
          body:Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [


                Text('Please select an option to continue the prototype',
                textAlign: TextAlign.center,
                style:TextStyle(color: color2, fontSize:23,)),

                SizedBox(height:20),

                ElevatedButton(
                  onPressed: null,
                  style: ElevatedButton.styleFrom(
                    disabledForegroundColor: color4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      side: BorderSide(
                        width: 2.0,
                        color: color2)
                    )
                  ),
                  child: 
                    Center(
                      child: 
                      Text('Minor flow without verified profile',
                      textAlign: TextAlign.center,
                      style:TextStyle(color: color2, fontWeight:FontWeight.bold))),
                ),

                
                ElevatedButton(
                  onPressed: null,
                  style: ElevatedButton.styleFrom(
                    
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      side: BorderSide(
                        width: 2.0,
                        color: color2)
                    )
                  ),
                  child: 
                    Center(
                      child: 
                      Text('Non-Flow minor',
                      textAlign: TextAlign.center,
                      style:TextStyle(color: color2, fontWeight:FontWeight.bold))),
                ),
              ],
            ),
          )

      ) );
    
  }
}