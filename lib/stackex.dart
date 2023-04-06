import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => const MaterialApp(
      useInheritedMediaQuery: true,
      home: stack(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}


class stack extends StatelessWidget {
  const stack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.pinkAccent[200],
        title: const Text('Stack'),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(color: Colors.deepOrange,),
            Positioned(left: 20,top: 50,child: Container(color: Colors.cyan,height: 400,width: 400,),),
            Positioned(left: 50,bottom: 20,child: Container(color: Colors.green,height: 300,width: 300,),),
            Positioned(right: 20,top:40, child: Container(color: Colors.yellow,height: 200,width: 200,)),

          ],
        ),
      ),
    );
  }
}
