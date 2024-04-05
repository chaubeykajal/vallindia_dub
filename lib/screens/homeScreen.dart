

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:syncfusion_flutter_charts/charts.dart';
import '../const variable/themecolor.dart';
import '../constwidget/appBarWidget.dart';
import '../constwidget/graphPresentation.dart';
import '../dummydata/homescreenData.dart';




class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  
  final String title;
  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  
  // List<Quests> existing_quest=;
  // double profilefillindicator = 34;
  

  // taking variable for graph 
  late List<RadialComponents> _chartData;
  late TooltipBehavior _tooltipBehavior;  

  List<RadialComponents> getChart(){
     final List<RadialComponents>  chartData =[
      // How much money you donate to the ngos in percentage? - [ max value =10000 , you contribution = 4000,]
      RadialComponents('DonateMoney',(4000 / 10000 *100).toInt(),const Color.fromARGB(255, 97, 221, 101)),

      // How much time did you spend on this app in percentage? - [ max value =10000 , you contribution = 4000,]
      RadialComponents('time',(200 / 500 *100).toInt(),Color.fromARGB(255, 246, 155, 57)),  
      
      // How much money you raise for any ngo in percentage? - [ max value =10000 , you contribution = 4000,]
      RadialComponents('RaiseMoney',(2000 / 10000*100).toInt(),Color.fromARGB(255, 73, 81, 234)),

     ];
     return chartData;}

  

  @override

  void initState(){
    _chartData = getChart(); 
    _tooltipBehavior = TooltipBehavior(enable: true);
     
  }



  @override
  Widget build(BuildContext context) {
    final mq= MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: appBarWidget(mq: mq, title: 'Vall India', appbarbackground: Color.fromARGB(255, 248, 232, 186),),
        body: 
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left:8.0,right: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                graphPresentation(height:mq.height*0.37,width:mq.width, tooltipBehavior: _tooltipBehavior, chartData: _chartData),
          
                Text('Existing Quests',style:TextStyle(color: color2,fontSize:20),),
          
                QuestListBuilder(mq: mq),
          
                SizedBox(height:15),
                Text('New Quests',style:TextStyle(color: color2,fontSize:20),),
          
                QuestListBuilder(mq: mq)
          
          
                                
              ],
              
            ),
          ),
        )
        
            ),
    );
  }
}

class QuestListBuilder extends StatelessWidget {
  const QuestListBuilder({
    super.key,
    required this.mq,
  });

  final Size mq;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mq.height * 0.22,
      color: Colors.black.withOpacity(0.2),
      child: ListView.builder(
        itemCount: Existing_Quests.length,
        physics: AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              margin: EdgeInsets.only(top: 6, bottom: 6),
              height: mq.height * 0.17,
              width: mq.width * 0.5,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: mq.height * 0.16,
                    width: mq.width * 0.5,
                    child: Stack(
                      children: [
                        Image.asset(
                          Existing_Quests[index].image,
                          fit: BoxFit.cover,
                          width: mq.width * 0.5,
                          height: mq.height * 0.16,
                        ),
                        Positioned(
                          bottom: 4,
                          left: 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: mq.height * 0.03,
                                width: mq.width * 0.16,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Existing_Quests[index].color,
                                ),
                                child: Center(
                                  child: Text(
                                    truncateText(Existing_Quests[index].opportunities, 5),
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ),
                              SizedBox(width: mq.width * 0.16),
                              Container(
                                height: mq.height * 0.03,
                                width: mq.width * 0.16,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Existing_Quests[index].color,
                                ),
                                child: Center(
                                  child: Text(
                                    truncateText(Existing_Quests[index].date, 6),
                                    style: TextStyle(fontSize: 8),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0,top:5.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          truncateText(Existing_Quests[index].opportunities, 15),
                          style: TextStyle(color: color2, fontSize: 12),
                        ),
                        SizedBox(width:mq.width*.17,),
                        Expanded(
                          child: Text(
                            truncateText(Existing_Quests[index].modes, 10),
                            style: TextStyle(color: color2, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}


class RadialComponents{
  RadialComponents(this.components , this.total, this.color);
  final String components;
  final int total;
  final Color? color;
}

String truncateText(String text, int maxLength) {
  if (text.length <= maxLength) {
    return text;
  } else {
    return text.substring(0, maxLength) + '...';
  }
}











// Consumer<ProfileIndicatorProvider>(
//                 builder: (context, value, child) {
//                   return Container(
//                     height:mq.height*0.08,
//                   decoration:const BoxDecoration(
//                     color: Colors.white,
//                     boxShadow: [BoxShadow(
//                       blurRadius:1,
//                       spreadRadius:3,
//                       color: Color.fromARGB(255, 223, 217, 217),
//                       offset: Offset(0, 4),
//                       blurStyle: BlurStyle.outer
//                     )]
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                      Text('${value.completeProfileValue} % completed Profile',style: TextStyle(color: Colors.red,fontSize: 13),),
//                      Padding(
//                        padding: const EdgeInsets.only(right:30.0, left:30),
//                        child: LinearProgressIndicator(
//                         value: value.completeProfileValue,
//                         backgroundColor: Color.fromARGB(255, 53, 39, 81),
//                         valueColor: AlwaysStoppedAnimation(Color.fromARGB(255, 120, 177, 223)),
//                        ),
//                      )
//                    ] ),
//                 );
//                 },
//               ),