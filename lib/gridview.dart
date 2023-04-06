import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        theme: ThemeData(primarySwatch: Colors.teal),
        useInheritedMediaQuery: true,
        home: Grid01(),
        debugShowCheckedModeBanner: false,
      )));
}
class Grid01 extends StatelessWidget {
  const Grid01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid'),
      ),
      body: GridView(
        gridDelegate:
             SliverGridDelegateWithMaxCrossAxisExtent(
            crossAxisSpacing: 20,
            mainAxisSpacing: 20, maxCrossAxisExtent:100),
        children: [
          Image.asset('assets/images/Apple.png',height: 50,width:50,),
          Image.asset('assets/images/Apple.png',height: 100,width:100),
          Image.asset('assets/images/Apple.png',height: 100,width:100),
          Image.asset('assets/images/Apple.png',height: 100,width:100),
          Image.asset('assets/images/Apple.png',height: 100,width:100)
        ],
      ),
    );
  }
}
