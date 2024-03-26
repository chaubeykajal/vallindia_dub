

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vall_india/authentication/authFunctions/googleSigninFunc.dart';
import 'package:vall_india/const%20variable/themecolor.dart';
import 'package:vall_india/constwidget/checkboxwidget.dart';
import 'package:vall_india/constwidget/customeTextformfield.dart';
import 'package:vall_india/constwidget/elevatedButtonWidget.dart';
import 'package:vall_india/provider/checkbox_provider.dart';
import 'package:google_sign_in/google_sign_in.dart';


class signin_page extends StatefulWidget {



  @override
  State<signin_page> createState() => _signin_pageState();
}

class _signin_pageState extends State<signin_page> {



  late GoogleSignIn googleSignIn;

  final _formkey=GlobalKey<FormState>();
  TextEditingController _nameController= TextEditingController();
  TextEditingController _emailController= TextEditingController();
  TextEditingController _passwordController= TextEditingController();
  TextEditingController _confirmPasswordController= TextEditingController();

  

  // set _googleSignIn(_googleSignIn) {}
  @override
  void initState() {
    super.initState();
    googleSignIn = GoogleSignIn(
      scopes: ['email'],
    );
  }

  @override
  Widget build(BuildContext context) {
    final mq= MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 244, 238, 222),
        body: Form(
          key: _formkey,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
      
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      margin:EdgeInsets.only(top:20),
                      height: mq.height*17/100,
                      width: mq.height*17/100,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: Color.fromARGB(0, 217, 17, 17)),
                      child: CircleAvatar(child:Image.asset('assets/Banners/vall.png'))),
                  SizedBox(height: 15,),
                  Padding(
                    padding: EdgeInsets.only(right:12.0,left:12.0),
                    child:
                    Stack(
                      children: [
                        Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:[
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.arrow_back,size:15,),
                                        SizedBox(width:2,),
                                        Text('Back to Home'),
                                      ],
                                    ),
                                    Expanded(child: SizedBox()),
      
                                    Row(
                                      children: [
                                        Text('Sign up as an NGO'),
                                        SizedBox(width:2,),
      
                                        // IconButton(
                                        //   onPressed:,
                                        //   icon:
                                        Icon(Icons.arrow_forward,size:15)
                                        // )
                                      ],
                                    ),
                                  ],
                                ),
      
                                Text('Sign up', style: TextStyle(fontSize:24, color:Colors.black),),
                                SizedBox(height: 10,),
                                Text('Create an account to access the complete platform', style: TextStyle(fontSize:13, color:color1),),
      
                                SizedBox(height: 10,),
      
                                /// creating Text fields for input user data.
      
                                CustomTextFormField(
                                    labelText: null,
                                    controller: _nameController,
                                    hintText: 'Name*',
                                    prefixIcon: null,
                                    suffixIcon: null,
                                    obscureText: false,
                                    validator: (value){
                                      if (value!.isEmpty){
                                        return 'Please enter your name';
                                      }
                                    },
                                    height: mq.height*6/100,
                                    width: mq.width),
      
                                SizedBox(height: 8,),
      
                                CustomTextFormField(
                                    labelText: null,
                                    controller: _emailController,
                                    hintText: 'Email*',
                                    prefixIcon: null,
                                    suffixIcon: null,
                                    obscureText: false,
                                    validator: (value){
                                      if (value!.isEmpty){
                                        return 'Please enter your email';
                                      }
                                    },
                                    height: mq.height*6/100,
                                    width: mq.width),
      
                                SizedBox(height: 8,),
      
                                CustomTextFormField(
                                    labelText: null,
                                    controller: _passwordController,
                                    hintText: 'Create password*',
                                    prefixIcon: null,
                                    suffixIcon: Icon(Icons.visibility),
                                    obscureText: false,
                                    validator: (value){
                                      if (value!.isEmpty){
                                        return 'Please create a unique password';
                                      }
                                    },
                                    height: mq.height*6/100,
                                    width: mq.width),
      
                                SizedBox(height: 8,),
      
                                CustomTextFormField(
                                    labelText: null,
                                    controller: _confirmPasswordController,
                                    hintText: 'Confirm password*',
                                    prefixIcon: null,
                                    suffixIcon: Icon(Icons.visibility),
                                    obscureText: false,
                                    validator: (value){
                                      if (value!.isEmpty){
                                        return 'Please enter your name';
                                      }
                                    },
                                    height: mq.height*6/100,
                                    width: mq.width),
                                // Terms & Privacy polices textbox
                                Consumer<CheckboxProvider>(
                                    builder: (context, value, child){
                                      return Column(
                                        children: [
                                          CheckboxWidget(
                                              String1:'I agree to the ',
                                              String2:'Terms and Conditions' ,
                                              onChanged: (newValue){
                                                value.toggleCheckbox_Term();
                                              },
                                              value:value.isChecked_1
                                              ),
                                        CheckboxWidget(
                                          String1:'I agree to the ' ,
                                          String2:'Privacy policies',
                                          value: value.isChecked_2,
                                          onChanged:(newValue2){
                                            value.toggleCheckbox_Privacy();
                                          }),

                                        ],
                                      );
                                    }),
      
      
                                
      
      
                                // const SizedBox(height:20,),
      
                              elevatedButtonWidget(height: mq.height*0.05, color: Colors.blue, onpress: null, width: double.infinity, title: 'Create Account', fontsize: 19,),
      
                              const SizedBox(height:20,),
      
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Already have an account?', style: TextStyle(color:  color1),),
                                    InkWell(onTap: (){},child: Text('Sign in', style:TextStyle(color:color3,fontSize:15))),
                                  ],
                                ),
      
                                const SizedBox(height:10,),
      
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('__________', style: TextStyle(color: color1)),
                                    Text('or continue with', style: TextStyle(color: color1)),
                                    Text('__________', style: TextStyle(color: color1)),
                                  ],
                                ),
      
                                const SizedBox(height:8,),
      
                                Consumer<AuthProvider>(
                                  builder: (context, value, child){
                                  return InkWell(
                                      onTap: (){
                                        value.handleSignIn(googleSignIn,context);
                                        value.setUser();},
                                      child:Container(
                                          height: mq.height*5/100,
                                          width: mq.height*5/100,
                                          // color: color1,
                                          child: Image.asset('assets/Icons/google.png',))
                                  );}
                                ),
      
                                Consumer<AuthProvider>(
                                  builder: (BuildContext context, AuthProvider value, Widget? child) {  
                                  return InkWell(
                                      onTap: (){value.handleSignOut(googleSignIn);},
                                      child:Container(
                                          height: mq.height*5/100,
                                          width: mq.height*5/100,
                                          // color: color1,
                                          child: Text('logout'))
                                  );
                                  }
                                )
                                
      
      
      
      
                              ],
      
      
                            ),
                          ),
      
      
      
      
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      
      ),
    );
  }
}

