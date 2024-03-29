


import 'package:flutter/material.dart';
import 'package:vall_india/authentication/authScreens/sign_in.dart';
import 'package:vall_india/authentication/authWidgets/backbuttonWidget.dart';
import 'package:vall_india/authentication/authWidgets/logowidget.dart';
import 'package:vall_india/const%20variable/themecolor.dart';
import 'package:vall_india/constwidget/customeTextformfield.dart';
import 'package:vall_india/constwidget/elevatedButtonWidget.dart';

class forgotPasswordPage extends StatefulWidget{
  @override
  State<forgotPasswordPage> createState() => _forgotPasswordPageState();
}

class _forgotPasswordPageState extends State<forgotPasswordPage> {

  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController _emailController=TextEditingController();
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
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          previousScreenButton(context,),
                          SizedBox(height:20,),
                          Center(child: Text('Forgot password',style:TextStyle(color:color2,fontSize:26,fontWeight: FontWeight.bold))),
                      
                          SizedBox(height:5,),
                          Text(
                            "No worries, we'll send you the reset instructions",
                            textAlign: TextAlign.center,
                            style:TextStyle(color:color1,fontSize:16)),
              
                          SizedBox(height:20,),
              
                          CustomTextFormField(
                          // labelText:'Email*',
                          controller: _emailController,
                          hintText: 'Email*',
                          prefixIcon: null,
                          suffixIcon: null,
                          obscureText: false,
                          validator: (value){
                            if (value!.isEmpty){
                              return 'Please enter your mail';
                            }
                          },
                          // height: mq.height*6/100,
                          // width: mq.width
                          ),
              
                          SizedBox(height:25,),
              
                          elevatedButtonWidget(height: mq.height*.053, 
                          color: color3, 
                          onpress:(){
                            if (_formkey.currentState!.validate()){
                        
                            }
                          }, 
                          width:mq.width, 
                          title:'Get link', 
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
      
      ),
    );
  }
}
