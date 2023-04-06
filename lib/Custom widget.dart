import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget{
  final Color?  backgroundColor;
  final Text title;
  final Icon icon;
  VoidCallback onpress;
   CustomWidget({ this.backgroundColor,required this.title,required this.onpress,required this.icon});

   @override
  Widget build(BuildContext context){
     return Card(color: backgroundColor,
     child: ListTile(
       leading: icon,
       title: title,
       onTap: onpress,
     ),);
   }
}