

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vall_india/authentication/authFunctions/googleSigninFunc.dart';
import 'package:vall_india/authentication/authScreens/confirmPassword.dart';
import 'package:vall_india/authentication/authScreens/sign_in.dart';
import 'package:vall_india/authentication/authWidgets/TermsAndConditionsWidget.dart';
import 'package:vall_india/authentication/authWidgets/logowidget.dart';
import 'package:vall_india/authentication/authWidgets/subtitleWidget.dart';
import 'package:vall_india/const%20variable/themecolor.dart';
import 'package:vall_india/constwidget/customeTextformfield.dart';
import 'package:vall_india/constwidget/elevatedButtonWidget.dart';
import 'package:google_sign_in/google_sign_in.dart';


class signup_page extends StatefulWidget {



  @override
  State<signup_page> createState() => _signup_pageState();
}

class _signup_pageState extends State<signup_page> {



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
            child: Column(
                  
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                logoWidget(mq: mq),                        // logo of the app 
                Padding(
                  padding: EdgeInsets.only(left:12.0, right:12,top:20),
                  child:
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[   
                          // title of the page   
                          Center(child: Text('Sign up', style: TextStyle(fontSize:25, fontWeight: FontWeight.bold,color:Colors.black),)),
                          SizedBox(height: 10,),
                          subtitlewidget(subtitle: 'Create an account to access the complete platform'),
                                    
                          SizedBox(height: 10,),
                                    
                          /// creating Text fields for input user data.       
                          CustomTextFormField(
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
                              ),
                                    
                          SizedBox(height: 8,),
                                    
                          CustomTextFormField(
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
                              ),
                                    
                          SizedBox(height: 8,),
                                    
                          CustomTextFormField(
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
                              ),
                                    
                          SizedBox(height: 8,),
                                    
                          CustomTextFormField(
                              controller: _confirmPasswordController,
                              hintText: 'Confirm password*',
                              prefixIcon: null,
                              suffixIcon: Icon(Icons.visibility),
                              obscureText: false,
                              validator: (value){
                                if (value!.isEmpty){
                                  return 'Please enter confirm your password';
                                }
                              },
                              
                            ),          
                                    
                        const SizedBox(height:25,),
                                    
                        elevatedButtonWidget(height: mq.height*0.05, color: Colors.blue,
                         onpress: (){ 
                          if(_formkey.currentState!.validate()){
                            return 
                              Navigator.pushReplacement(context, MaterialPageRoute(builder:(context){return confirmPasswordPage();}));
                          }
                          else{return null;}
                          }, width: double.infinity, title: 'Create account', fontsize: 17,),
                                    
                        const SizedBox(height:20,),
                                    
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Already have an account?', style: TextStyle(color:  color1),),
                              InkWell(onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder:(context){return signin_page();}));
                              },child: Text('Sign in', style:TextStyle(color:color3,fontSize:15))),
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
                          
                          //Google sign in 
   
                          Consumer<AuthProvider>(
                            builder: (context, value, child){
                            return InkWell(
                                onTap: (){
                                  value.handleSignIn(googleSignIn,context);
                                  value.setUser();},
                                child:Center(
                                  child: Image.asset('assets/Icons/google.png',
                                    height: mq.height*5/100,width: mq.height*5/100,),
                                )
                            );}
                          ),
                        TermsAndConditionsWidget(),
                      ],
                      ),
                    ),                
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


// const Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
    //   crossAxisAlignment: CrossAxisAlignment.center,
    //   children: [
    //     Row(
    //       children: [
    //         Icon(Icons.arrow_back,size:15,),
    //         SizedBox(width:2,),
    //         Text('Back to Home'),
    //       ],
    //     ),
    //     Expanded(child: SizedBox()),

    //     Row(
    //       children: [
    //         Text('Sign up as an NGO'),
    //         SizedBox(width:2,),

    //         // IconButton(
    //         //   onPressed:,
    //         //   icon:
    //         Icon(Icons.arrow_forward,size:15)
    //         // )
    //       ],
    //     ),
    //   ],
    // ),

  //Google sign out
      
  // Consumer<AuthProvider>(
  //   builder: (BuildContext context, AuthProvider value, Widget? child) {  
  //   return InkWell(
  //       onTap: (){value.handleSignOut(googleSignIn);},
  //       child:Container(
  //           height: mq.height*5/100,
  //           width: mq.height*5/100,
  //           // color: color1,
  //           child: Text('logout'))
  //   );
  //   }
  // )

// Consumer<CheckboxProvider>(
  //     builder: (context, value, child){
  //       return Column(
  //         children: [
  //           CheckboxWidget(
  //               String1:'I agree to the ',
  //               String2:'Terms and Conditions' ,
  //               onChanged: (newValue){
  //                 value.toggleCheckbox_Term();
  //               },
  //               value:value.isChecked_1
  //               ),
  //         CheckboxWidget(
  //           String1:'I agree to the ' ,
  //           String2:'Privacy policies',
  //           value: value.isChecked_2,
  //           onChanged:(newValue2){
  //             value.toggleCheckbox_Privacy();
  //           }),

  //         ],
  //       );
  //     }),

