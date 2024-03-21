
import 'package:flutter/material.dart';
import 'package:vallindia_dub/constwidget/checkboxwidget.dart';
import 'package:vallindia_dub/constwidget/customeTextformfield.dart';
import 'package:vallindia_dub/provider/checkbox_provider.dart';
import 'package:provider/provider.dart';


class signup_page extends StatefulWidget {
  


  @override
  State<signup_page> createState() => _signup_pageState();
}

class _signup_pageState extends State<signup_page> {


  final _formkey=GlobalKey<FormState>();
  TextEditingController _nameController= TextEditingController();
  TextEditingController _emailController= TextEditingController();
  TextEditingController _passwordController= TextEditingController();
  TextEditingController _confirmPasswordController= TextEditingController();
  
  

  @override
  Widget build(BuildContext context) {
    final mq= MediaQuery.of(context).size;
    
    return Scaffold(
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
                  margin:EdgeInsets.only(top:50),
                  height: mq.height*20/100,
                  width: mq.height*20/100,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: Color.fromARGB(0, 217, 17, 17)),
                  child: CircleAvatar(child:Image.asset('assets/Banners/vall.png'))),
              SizedBox(height: 20,),  
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
                                  height: mq.height*7/100, 
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

                                  SizedBox(height: 10,),

                                  Consumer<CheckboxProvider>(
                                    builder: (context, value, child){
                                    return CheckboxWidget(
                                      String1:'I agree to the ',
                                      String2:'Terms and Conditions' ,
                                      onChanged: (newValue){
                                        value.toggleCheckbox();
                                      },
                                      value:value.isChecked);
                                    } ),
                                    

                                    Consumer<CheckboxProvider>(
                                      builder: (BuildContext context, CheckboxProvider value, Widget? child) {  
                                      return  CheckboxWidget(
                                      String1:'I agree to the ' , 
                                      String2:'Privacy policies', 
                                      value: value.isChecked, 
                                      onChanged:(newValue){
                                        value.toggleCheckbox();
                                      });
                                    }),
                                    

                                    const SizedBox(height:20,),

                                    SizedBox(
                                      height:40,
                                      width: double.infinity,
                                    child:ElevatedButton(
                                      style: ElevatedButton.styleFrom(backgroundColor: color3),
                                      onPressed:(){}, 
                                    child: Text('Create Account',style: TextStyle(color: Colors.white)))
                                    
                                    ),

                                    const SizedBox(height:30,),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Already have an account?', style: TextStyle(color:  color1),),
                                        InkWell(onTap: (){},child: Text('Sign in', style:TextStyle(color:color3,fontSize:15))),
                                      ],
                                    ),

                                    const SizedBox(height:20,),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        // Container(
                                        //   height: 20,
                                        //   child: SizedBox(
                                        //     height: 2, // Adjust the height as needed
                                        //     child: Divider(color: color1),
                                        //   ),
                                        // ),
                                        Text('__________', style: TextStyle(color: color1)),
                                        Text('or continue with', style: TextStyle(color: color1)),
                                        Text('__________', style: TextStyle(color: color1)),
                                      ],
                                    ),
 
                                    const SizedBox(height:8,),

                                    InkWell(
                                      onTap: (){},
                                      child:Container(
                                        height: mq.height*5/100,
                                        width: mq.height*5/100,
                                        color: color1,
                                        child: Image.asset('assets/Icons/google.jpg',))
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
     
    );
  }
}

