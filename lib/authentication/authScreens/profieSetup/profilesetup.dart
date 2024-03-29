

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:vall_india/authentication/authWidgets/logowidget.dart';
import 'package:vall_india/authentication/authWidgets/subtitleWidget.dart';
import 'package:vall_india/const%20variable/themecolor.dart';
import 'package:vall_india/constwidget/customeTextformfield.dart';
import 'package:vall_india/constwidget/elevatedButtonWidget.dart';

class profileSetup_Page extends StatefulWidget{
  @override
  State<profileSetup_Page> createState() => _profileSetup_PageState();
}

class _profileSetup_PageState extends State<profileSetup_Page> {

  TextEditingController _nationalityController =TextEditingController(); 
  TextEditingController _mobileController =TextEditingController();
  TextEditingController _dateController =TextEditingController();
  TextEditingController _identityController =TextEditingController();  
  GlobalKey<FormState> _formKey = GlobalKey<FormState>(); 
  @override
  Widget build(BuildContext context) {
    final mq= MediaQuery.of(context).size;
    return SafeArea(child:
    Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 238, 222),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              logoWidget(mq: mq),
              Padding(
                    padding: EdgeInsets.only(right:20.0,left:20.0,top:20),
                    child:
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            Center(child: Text('Profile setup',style:TextStyle(color:color2,fontSize:26,fontWeight: FontWeight.bold))),
                        
                            SizedBox(height:5,),
                            subtitlewidget(subtitle: 'Hi Ankita,setup your profile& continue exploring the platform'),
                            SizedBox(height:10,),
                            Stack(
                              children: [Container(
                                decoration: BoxDecoration(
                                  color: color2,
                                  borderRadius: BorderRadius.all(Radius.circular(60))
                                ),
                                height:mq.height*0.15,width: mq.height*0.15,
                                
                                // child: Image.network('')
                                ),
                              ]
                            ),

                            SizedBox(height:40,),
                            CustomTextFormField(
                            controller: _nationalityController,
                            hintText: 'Nationality*',
                            prefixIcon: null,
                            suffixIcon: null,
                            obscureText: false,
                            validator: (value){
                              if (value!.isEmpty){
                                return 'Please enter your nationality';
                              }
                            },
                            ),
                            SizedBox(height: 8,),
                            CustomTextFormField(
                            controller: _mobileController,
                            hintText: 'Mobile number*',
                            prefixIcon: null,
                            suffixIcon: null,
                            obscureText: false,
                            validator: (value){
                              if (value!.isEmpty){
                                return 'Please enter your phone number';
                              }
                            },
                            ),
                            SizedBox(height: 8,),
                            CustomTextFormField(
                            controller: _nationalityController,
                            hintText: 'Date of birth*',
                            prefixIcon: null,
                            suffixIcon: null,
                            obscureText: false,
                            validator: (value){
                              if (value!.isEmpty){
                                return 'Please enter your date of birth';
                              }
                            },
                            ),
                            SizedBox(height: 8,),
                            CustomTextFormField(
                            controller: _nationalityController,
                            hintText: "I'm identified as*",
                            prefixIcon: null,
                            suffixIcon: null,
                            obscureText: false,
                            validator: (value){
                              if (value!.isEmpty){
                                return 'Please enter your identity';
                              }
                            },
                            ),
                
                            SizedBox(height:25,),
                
                            elevatedButtonWidget(height: mq.height*.053, 
                            color: color3, 
                            onpress:(){
                              if (_formKey.currentState!.validate()){
                          
                              }
                            }, 
                            width:mq.width, 
                            title:'Just a little more', 
                            fontsize:17),
                
                            SizedBox(height:25,),
                      ])
                      )
                            
                    ),
              )
        
        
            ],
          ),
        ),
      ),
    ));
  }
}