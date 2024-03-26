

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:vall_india/const%20variable/themecolor.dart';



class Quests{
   final String image;
   final String opportunities;
   final String modes;
   final String date;
   final Color  color ; // Define the color

   Quests({
    required this.opportunities, 
    required this.modes, 
    required this.date, 
    required this.image,
    this.color = Colors.white });
}

    // static  List<Quests> All_quests = Exsiting_Quests.map((quests){
    //   return Quests(
    //     opportunities: quests['opportunities']!, 
    //     modes: quests['modes']!, 
    //     date: quests['date']!, 
    //     image: quests['image']!);
    // }).toList(); 
    


