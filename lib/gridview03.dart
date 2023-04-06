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
      body: GridView.count(crossAxisCount: 2,
      children: List.generate(10, (index) {
        return Card(
        child: Column(
        children: [
          Image.asset('assets/images/Apple.png',height: MediaQuery.of(context).size.height/5,),
          Center(child: Text('apple'))
    ],
        ),
    );
    })

    ));
  }
}
