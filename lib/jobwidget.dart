// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:job_ui_kit/data.dart';
import 'package:job_ui_kit/details.dart';

class Opening extends StatelessWidget {
  final _list = Jobs.generatejobs();

  Opening({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}

//class Opens extends StatelessWidget {
  //const Opens({ Key? key }) : super(key: key);

  //@override
  //Widget build(BuildContext context) {
   //final _list = Jobs.generatejobs(); 
    //return Column(
      //          children: _list.map((e) {
        //      return 
          //  }).toList(),
            //);
  //}
//}