

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vallindia_dub/authentication/authFunctions/googleSigninFunc.dart';
import 'package:vallindia_dub/authentication/authScreens/confirmPassword.dart';
import 'package:vallindia_dub/authentication/authScreens/forgotPassword.dart';
import 'package:vallindia_dub/authentication/authScreens/signup.dart';
import 'package:vallindia_dub/authentication/authWidgets/TermsAndConditionsWidget.dart';
import 'package:vallindia_dub/authentication/authWidgets/logowidget.dart';
import 'package:vallindia_dub/authentication/authWidgets/subtitleWidget.dart';
import 'package:vallindia_dub/const%20variable/themecolor.dart';
import 'package:vallindia_dub/constwidget/customeTextformfield.dart';
import 'package:vallindia_dub/constwidget/elevatedButtonWidget.dart';
import 'package:google_sign_in/google_sign_in.dart';


class signin_page extends StatefulWidget {



  @override
  State<signin_page> createState() => _signin_pageState();
}

class _signin_pageState extends State<signin_page> {



  late GoogleSignIn googleSignIn;

  final _formkey=GlobalKey<FormState>();
  TextEditingController _emailController= TextEditingController();
  TextEditingController _passwordController= TextEditingController();


  

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
                logoWidget(mq: mq),
                SizedBox(height: 15,),
                Padding(
                  padding: EdgeInsets.only(left:12.0, right:12,),
                  child:
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Center(child: Text('Sign in', style: TextStyle(fontSize:25, fontWeight: FontWeight.bold,color:Colors.black),)),
                          SizedBox(height: 10,),

                          subtitlewidget(subtitle:'Please enter your detials to access your account'),
                          
                                    
                          SizedBox(height: 20,),
                                    
                          /// creating Text fields for input user data.
                                     
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
                              hintText: 'Password*',
                              prefixIcon: null,
                              suffixIcon: Icon(Icons.visibility),
                              obscureText: false,
                              validator: (value){
                                if (value!.isEmpty){
                                  return 'Please create a unique password';
                                }
                              },
                      
                              ),

                             
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  InkWell(
                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>forgotPasswordPage()));},
                                    child: Text(
                                      textAlign: TextAlign.end,
                                      'Forgot password',
                                      style: TextStyle(fontSize:15, color:color2,decoration:TextDecoration.underline,decorationColor: color2,fontWeight:FontWeight.bold),),
                                  ),
                                ],
                              ),
                              //  ),
                             
                                  
                        const SizedBox(height:10,),
                                    
                        elevatedButtonWidget(height: mq.height*0.05, color: Colors.blue, 
                        onpress: (){
                          if ( _formkey.currentState!.validate()){
                          return 
                          Navigator.pushReplacement(context, MaterialPageRoute(builder:(context){return confirmPasswordPage();}));
                          }else{return null;}
                        }, width: double.infinity, title: 'Sign in', fontsize: 17,),
                                    
                        const SizedBox(height:20,),
                                    
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have an account?", style: TextStyle(color:  color1),),
                              InkWell(
                                onTap: (){
                                  // Navigator.pop(context)
                                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context){return signup_page();}));},
                                  child: Text('Sign up', style:TextStyle(color:color3,fontSize:15))),
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
                                  child:Image.asset('assets/Icons/google.png',
                                  height:mq.height*5/100,width: mq.height*5/100,)    
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

