




import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vall_india/authentication/authScreens/sign_in.dart';
import 'package:vall_india/authentication/authWidgets/backbuttonWidget.dart';
import 'package:vall_india/authentication/authWidgets/logowidget.dart';
import 'package:vall_india/authentication/authWidgets/subtitleWidget.dart';
import 'package:vall_india/const%20variable/themecolor.dart';
import 'package:vall_india/constwidget/customeTextformfield.dart';
import 'package:vall_india/constwidget/elevatedButtonWidget.dart';

class confirmPasswordPage extends StatefulWidget{
  @override
  State<confirmPasswordPage> createState() => _confirmPasswordPageState();
}

class _confirmPasswordPageState extends State<confirmPasswordPage> {

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
          child: authbackgrounddesign(mq: mq, emailController: _emailController, formkey: _formkey,),
        ),
      
      ),
    );
  }
}

class authbackgrounddesign extends StatelessWidget {
  const authbackgrounddesign({
    super.key,
    required this.mq,
    required TextEditingController emailController,
    required GlobalKey<FormState> formkey,
  }) : _emailController = emailController, _formkey = formkey;

  final Size mq;
  final TextEditingController _emailController;
  final GlobalKey<FormState> _formkey;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          logoWidget(mq: mq),
          
          Padding(
            padding: EdgeInsets.only(right:20.0,left:20.0,top:20),
            child:
            Center(
              child: Container(
                alignment: Alignment.center,
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
                      SizedBox(height:20,),
                      previousScreenButton(context,),
                      SizedBox(height:10,),
                      Center(child: Text('Confirm your email',style:TextStyle(color:color2,fontSize:26,fontWeight: FontWeight.bold))),
                      subtitlewidget(subtitle: "We have sent a code on your registered mail",),
              
                      SizedBox(height:20,),
              
                      CustomTextFormField(
                        controller: _emailController,
                        hintText: 'Enter code*',
                        prefixIcon: null,
                        suffixIcon: null,
                        obscureText: false,
                        validator: (value){
                          if (value!.isEmpty){
                            return 'Please enter the code';
                          }
                          else{
                            return null;
                          }
                        },
                        ),
                          // SizedBox(height:20,),
                          Row(
                            children: [
                              Text(
                               "Haven't recieved the mail?",
                                style:TextStyle(color:color1,fontSize:12)),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                 "Resend",
                                  style:TextStyle(color:color3,fontSize:13,fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
              
                          SizedBox(height:25,),
              
                          elevatedButtonWidget(
                            height: mq.height*.053, 
                            color: color3, 
                            // onpress: null,
                            onpress:(){
                            if (_formkey.currentState!.validate()){ }
                          }, 
                          width:mq.width, 
                          title:'Get started', 
                          fontsize:17),
              
                          SizedBox(height:25,),
                    ])
                    )
                          
                  ),
            )
          )
        ],
      ),
    );
  }

 
}



