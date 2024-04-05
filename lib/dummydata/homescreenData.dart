

import 'package:flutter/material.dart';
import 'package:vallindia_dub/MVVM_Strutures/Quest_MVVM.dart';

List<Quests> Existing_Quests =[
  Quests(
    opportunities: 'Fundraising', 
    modes:'Online' , 
    date: 'June 10 ,2024', 
    image: 'assets/dummyImages/Fund Raising1.jpg',
    color: Color.fromARGB(255, 108, 236, 121)
    ),

  Quests(
      image:'assets/dummyImages/narrative1.jpg',
      modes:'Online',
      opportunities:'Narrative',
      date:'June 10 ,2024',
      color: Color.fromARGB(255, 246, 59, 187)
  ),
  Quests(
    image:'assets/dummyImages/internship1.jpg',
    modes:'Offline',
    opportunities:'Internship',
    date:'June 10 ,2024', 
    color: Color.fromARGB(255, 145, 166, 249)
    
  ),

  Quests(
    image:'assets/dummyImages/Technology1.jpg',
    modes:'Online',
    opportunities:'Technology',
    date:'June 10 ,2024',
    color: Color.fromARGB(255, 230, 243, 130)
  ),
  Quests(
    opportunities: 'Fundraising', 
    modes:'Online', 
    date: 'June 10 ,2024', 
    image: 'assets/dummyImages/Fund Raising2.jpg',
    color: Color.fromARGB(255, 114, 238, 184)
  ),
  Quests(
    opportunities: 'Technology',
    modes:'Online',
    date: 'June 10 ,2024', 
    image: 'assets/dummyImages/Technology2.jpg',
    color: Color.fromARGB(255, 90, 239, 45)
  ),

  Quests(
    opportunities:'Narrative',
    modes: 'Online',
    date: 'June 10 ,2024', 
    image: 'assets/dummyImages/narrative1.jpg',
    color: Color.fromARGB(255, 246, 59, 187)
    ),
    

  Quests(
    opportunities: 'Donations', 
    modes:'Offline' , 
    date:'June 10 ,2024', 
    image:'assets/dummyImages/Donations2.jpg',
    color: Color.fromARGB(255, 90, 239, 45)
  ),

  Quests(
    opportunities:'Internship' , 
    modes:'Offline' , 
    date:'June 10 ,2024', 
    image:'assets/dummyImages/internship2.jpg',
    color: Color.fromARGB(255, 230, 243, 130)
  ),
    

];