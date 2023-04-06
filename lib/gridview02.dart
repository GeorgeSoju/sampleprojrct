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
      body: GridView.builder(
        itemCount: 10,
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:3,
        crossAxisSpacing: 20,mainAxisSpacing: 20),
        itemBuilder: (context, int index) {
          return Card(
            color: Colors.pinkAccent,
            child: Center(child: Text('Grid $index',style: TextStyle(fontSize: 25),)),
          );
        },

      ),
    );
  }
}
