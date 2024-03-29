import 'package:flutter/material.dart';

class logoWidget extends StatelessWidget {
  const logoWidget({
    super.key,
    required this.mq,
  });

  final Size mq;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:20.0),
      child: Container(
        margin:EdgeInsets.only(top:20),
        height: mq.height*0.10,
        width: mq.height*0.10,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: Color.fromARGB(0, 217, 17, 17)),
        child: CircleAvatar(child:Image.asset('assets/Banners/vall.png'))),
    );
  }
}
