import 'dart:js';

import 'package:flutter/material.dart';

import 'Alertbox.dart';
import 'expansion slide.dart';

void main(){
  runApp(MaterialApp(home: const MyHome(),
      routes: {
        'gridpage': (context)=>const SimpleAlert(),
        'slide page':(context)=>const ExpansionSlide()
      }
    ,));
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed('gridpage');
            }, child: const Text('To alertbox page')),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed('slide page');
            }, child: const Text('To slide page')),
          ],
        ),
      ),
    );
  }
}
