import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) =>  MaterialApp(
      useInheritedMediaQuery: true,
      home: Potrait(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class Potrait extends StatelessWidget {
  var orientation, size, height, width;

  @override
  Widget build(BuildContext context) {
    orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text('Orientation Media Query'),
        backgroundColor: Colors.green,
      ),
      body: orientation== Orientation.portrait ?
      Container(
        color: Colors.cyan,
        height: height/6,
        width: width/6,
      ):Container(
        color: Colors.red,
        height: height/4,
        width: width/4,
      ) ,
    );
  }
}
