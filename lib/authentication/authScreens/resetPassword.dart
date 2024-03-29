


import 'package:flutter/material.dart';
import 'package:vall_india/authentication/authWidgets/backbuttonWidget.dart';
import 'package:vall_india/authentication/authWidgets/logowidget.dart';
import 'package:vall_india/authentication/authWidgets/subtitleWidget.dart';
import 'package:vall_india/const%20variable/themecolor.dart';
import 'package:vall_india/constwidget/customeTextformfield.dart';
import 'package:vall_india/constwidget/elevatedButtonWidget.dart';

class resetPasswordPage extends StatefulWidget{
  @override
  State<resetPasswordPage> createState() => _resetPasswordPageState();
}

class _resetPasswordPageState extends State<resetPasswordPage> {

  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController _uniqueCodeController =TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
  final mq= MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 244, 238, 222),
        body: Form(
          key: _formkey,
          child: SingleChildScrollView(
            child: Column(
                  
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
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
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                            
                          previousScreenButton(context),
                          SizedBox(height:20,),
                          Center(child: Text('Reset password',style:TextStyle(color:color2,fontSize:26,fontWeight: FontWeight.bold))),
                      
                          SizedBox(height:5,),
                          subtitlewidget(subtitle: 'We have sent a code on your registered mail'),
              
                          SizedBox(height:20,),
                          CustomTextFormField(
                            controller: _uniqueCodeController,
                            hintText: 'Enter code*',
                            prefixIcon: null,
                            suffixIcon: null,
                            obscureText: false,
                            validator: (value){
                              if (value!.isEmpty){
                                return 'Please enter your unique code';
                              }
                            },
                              
                          ),
                  
                          Row(
                            children: [
                              Text(
                                "Haven't recieved the mail?",
                                style:TextStyle(color:color1,fontSize:15)),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  "Resend",
                                  style:TextStyle(color:color3,fontSize:15,fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                              
                          SizedBox(height:60,),
                  
                          CustomTextFormField(
                          controller: _passwordController,
                          hintText: 'Create new password*',
                          prefixIcon:null,
                          suffixIcon: Icon(Icons.visibility,color: color1,),
                          obscureText:false,
                          validator: (value){
                            if (value!.isEmpty){
                              return 'Please enter the password';
                            }
                          },
                          ),
                          
                          SizedBox(height:10,),
                          CustomTextFormField(
                          controller: _confirmPasswordController,
                          hintText: 'Confirm password*',
                          prefixIcon: null,
                          suffixIcon: Icon(Icons.visibility,color: color1),
                          obscureText: false,
                          validator: (value){
                            if (value!.isEmpty){
                              return 'Please confirm the password';
                            }
                            if (value!=_passwordController.text){
                              return 'password  do not matched with confirm password ';
                            }
                          },
                          
                          ),
                  
                          SizedBox(height:22,),
                          elevatedButtonWidget(
                            height: mq.height*.053, 
                            color: color3, 
                            onpress:(){
                              if(_formkey.currentState!.validate()){ 
                              }
                            }, 
                            width:mq.width, 
                            title:'Reset password', 
                            fontsize:17),
        
                          SizedBox(height:50,),
                  
                        ])
                        )
                              
                      ),
                )
              ],
            ),
          ),
        ),
      
      ),
    );
  }
}
