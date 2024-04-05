

import 'package:flutter/material.dart';
import 'package:vallindia_dub/const%20variable/themecolor.dart';

class TermsAndConditionsWidget extends StatelessWidget {
  // final String title;
  const TermsAndConditionsWidget({
    super.key,
    // required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return 
    Column(
      children: [
        Center(
          child: Text(
            textAlign: TextAlign.center,
            'By continuing, I agree with the',
            style: TextStyle(fontSize:15, color:color2),),
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){},
              child: Text(
              textAlign: TextAlign.center,
              'Term and Condition',
              style: TextStyle(fontSize:15, color:color3),),
          
            ),
            SizedBox(width:5,),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                'and',
                style: TextStyle(fontSize:15, color:color2),),
            ),
            SizedBox(width:5,),
            InkWell(
              onTap: (){},
              child: Text(
              textAlign: TextAlign.center,
              'Privacy  policies',
              style: TextStyle(fontSize:15, color:color3),),
              ),
          
            ],
            ),
      ],
    );
  }
}
