

import 'package:flutter/material.dart';
import 'package:vall_india/authentication/authWidgets/logowidget.dart';
import 'package:vall_india/authentication/authWidgets/subtitleWidget.dart';
import 'package:vall_india/const%20variable/themecolor.dart';

class questsSelection_Page extends StatefulWidget{
  @override
  State<questsSelection_Page> createState() => _questsSelection_PageState();
}

class _questsSelection_PageState extends State<questsSelection_Page> {
  @override
  Widget build(BuildContext context) {
    final mq= MediaQuery.of(context).size;

    return SafeArea(child: 
    Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 238, 222),

      body: SingleChildScrollView(
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
                            Center(child: Text('Pick 2 or more Quests',style:TextStyle(color:color2,fontSize:26,fontWeight: FontWeight.bold))),
                        
                            SizedBox(height:5,),
                            subtitlewidget(subtitle: "Hi Ankita, it's time to have some fun"),
                            SizedBox(height:10,),

                            // GridView.builder(
                            //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            //     maxCrossAxisExtent:200,
                            //     crossAxisSpacing: 20,
                            //     mainAxisSpacing: 20),
                            //   itemCount: 12, 
                            //   itemBuilder: (context, index){
                            //     return Container(
                            //       alignment: Alignment.center,
                            //       child: Image.asset('assets/Categories/Creative arts.png'),
                            //     );
                                
                            //   },)
               
                          ]
                        )

                      )
                    )
                  )
            ]
           )
          )
        )
      
      );

  }
}