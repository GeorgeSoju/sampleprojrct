import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        theme: ThemeData(primarySwatch: Colors.teal),
        useInheritedMediaQuery: true,
        home: const Grid5(),

        debugShowCheckedModeBanner: false,
      )));
}
class Grid5 extends StatelessWidget {
  const Grid5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(
          maxCrossAxisExtent: 120,
      children: const [Card(child: Center(child: Icon(Icons.headphones, size: 30,),),),
          Card(child: Center(child: Icon(Icons.headphones, size: 30,),),),
           Card(child: Center(child: Icon(Icons.headphones, size: 30,),),),
          Card(child: Center(child: Icon(Icons.headphones, size: 30,),),),
           Card(child: Center(child: Icon(Icons.headphones, size: 30,),),),

      ],),
    );
  }
}
